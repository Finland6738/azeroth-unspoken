# Azeroth Unspoken

*An immersive roleplay companion for World of Warcraft*

> 🇬🇧 [English version](README.md)

Un compagno narrativo immersivo per World of Warcraft, distintivo e misterioso, che richiama i pensieri e le storie non espresse.

Azeroth Unspoken è un addon per **World of Warcraft: Forever** (Interface `16001`). Contiene un motore narrativo locale e un database di frasi curate, in italiano e in inglese, che reagiscono ai luoghi, agli eventi e alle azioni del personaggio: una zona nuova, un combattimento, una ferita grave, un livello guadagnato, un saluto.

> **Stato: in sviluppo (versione 0.1.0 nel `.toc`), funzioni delle milestone M0–M3 scritte.** Il codice è stato provato solo fuori dal gioco, con un client simulato. **Nessuna prova nel client vero è ancora stata fatta** (checklist [G1](docs/G1_checklist.md): prove G1, G2 e G3, 92 passi in tutto): aspettati sorprese. Vedi [Stato del progetto](#stato-del-progetto).

## Indice

- [Cosa fa e cosa non fa](#cosa-fa-e-cosa-non-fa)
- [Requisiti](#requisiti)
- [Installazione](#installazione)
- [Primo avvio](#primo-avvio)
- [Comandi](#comandi)
- [Impostazioni](#impostazioni)
- [Privacy e chat](#privacy-e-chat)
- [Total RP 3](#total-rp-3)
- [Pacchetti di frasi](#pacchetti-di-frasi)
- [Stato del progetto](#stato-del-progetto)
- [Sviluppo e test](#sviluppo-e-test)
- [Documentazione](#documentazione)
- [Supporto e feedback](#supporto-e-feedback)
- [Licenza](#licenza)
- [Crediti](#crediti)

## Cosa fa e cosa non fa

**Cosa fa (oggi, su `main`)**

- **Narratore privato.** Ascolta alcuni eventi del gioco (entrata in una zona, inizio e fine di un combattimento, salute bassa, morte e ritorno in vita, livello, incantesimi lanciati, saluti e incontri) e, con una probabilità e una pausa regolate dall'intensità che scegli, ti mostra una frase adatta al momento in un **riquadro** solo tuo: spostabile, con durata, opacità e dimensione regolabili, cronologia recente e pausa immediata.
- **Frasi intere e scritte a mano**, non composte a caso da frammenti: **1.005 intenzioni** di base, con **2.109 varianti per lingua** (italiano e inglese). Ogni intenzione dice la stessa cosa con parole diverse; le varianti non si ripetono di fila. Sono divise in quattro voci: *personaggio* 444, *voce interiore* 252, *narratore* 124, *NPC* 185. Sono organizzate per evento, registro (antico, epico, tragico, intimo, quotidiano, ironico, cerimoniale) e condizioni (razza, classe, zona, ora del giorno, bersaglio, gruppo, istanza, ricordi, relazioni, interlocutore, luogo...).
- **Intensità e profondità.** L'intensità (0–100) dice quanto spesso parla il narratore; la profondità dello stile (*Naturale*, *Letterario*, *Elevato*) fa preferire le frasi scritte per quel tono: per i momenti chiave (arrivo in una foresta, ritorno, morte, livello, vittoria, saluti) ci sono varianti scritte apposta per tutte e tre. Il silenzio è un esito valido: niente cascate di messaggi, un solo intervento per momento.
- **Chat Gateway.** Se vuoi, le frasi del personaggio diventano **proposte per la chat** che confermi, modifichi o scarti tu. Vedi [Privacy e chat](#privacy-e-chat).
- **Personalità** (Character Soul, facoltativa). Dai al personaggio un carattere (temperamento, morale, curiosità, fede, motivazione, ironia, voce interiore, argomenti da evitare, o un archetipo pronto): le frasi in sintonia escono più spesso e quelle che contraddicono ciò che hai escluso non escono mai. Senza scelte il narratore resta neutro. Con [Total RP 3](#total-rp-3) e un consenso a parte può partire dai tratti del tuo profilo. Vedi `/au soul`.
- **Memoria e diario.** Ricorda i momenti significativi del personaggio (la prima volta in una zona, il ritorno, una visita finita male, le morti, i livelli) e li ritrova nelle frasi: **solo se il ricordo esiste davvero**. Il **diario** (`/au journal`) li mostra, li fa cancellare o rendere permanenti e li esporta come testo da copiare.
- **Relazioni.** Ricorda **come stai con le persone**: sei assi indipendenti (familiarità, fiducia, rispetto, affetto, timore, lealtà; l'attrazione è facoltativa e spenta) danno un'etichetta (sconosciuto, conoscente, amico, compagno d'armi, rivale rispettato, nemico...) e una disposizione. Gli **NPC** si calcolano da soli (dialoghi, quest, mercanti, voli, locandieri); i **giocatori** li scegli tu: l'addon propone, non registra nessuno senza un tuo clic. Il narratore cambia tono col rapporto, dal formale all'intimo. Vedi `/au relationships`.
- **Interlocutore e luogo.** Le frasi cambiano secondo **chi hai davanti** (ruolo, carattere, razza, classe, azioni recenti: una quest appena data, un duello, un'emote) e **dove sei** (zona, capitale amica o nemica, territorio, dungeon, incursione, campo di battaglia, arena, scontri con i boss). Il ritmo si adatta: più sobrio in incursione e contro i boss, frasi brevi in campo di battaglia. Vedi `/au who` e `/au place`.
- **NPC Alive** (dialoghi ambientali). Quando apri il mercato, il volo o l'addestramento di un NPC, o parli con un locandiere noto, compare un piccolo pulsante; premendolo (o col tasto dedicato) si apre una finestra separata, etichettata **«dialogo ambientale dell'addon»**, con una battuta dell'NPC e da una a tre risposte neutre. È un dialogo **simulato**: non compare mai in chat, non tocca gossip, quest o commercio, e non cambia nulla nel gioco; le scelte lasciano solo un flag nel diario. L'NPC parla secondo il suo carattere (burbero, gioviale...) e se lo conosci. Ci sono cinque archetipi (locandiere, mercante, guardia, maestro di volo, addestratore) e 169 battute. Vedi `/au talk` (con `prova` per provare la finestra senza un NPC vero).
- **Story Arcs** (storie personali). Quattro piccole storie del tuo personaggio: il ritorno nel luogo da cui è cominciata l'avventura, un volto che incontri sempre più spesso, una caduta e il ritorno, il viaggio tra le capitali. Sono racconti, **non missioni**: nessuna ricompensa, nessun effetto sul gioco. Cominciano solo da un evento vero, sono al massimo due alla volta, le scelte che contano le fai tu, e le puoi sospendere, saltare o disattivare quando vuoi (`/au stories`, scheda «Storie» del diario). Alla fine lasciano un ricordo nel diario.
- **Procedura guidata** al primo avvio, saltabile, e **diagnostica** (`/au debug`) che mostra che cosa il tuo client permette di fare all'addon.
- Si estende con **pacchetti di frasi** in addon separati (anche dialoghi, archi, luoghi e NPC), senza toccare il motore, con un **validatore** (`/au validate`) che controlla i testi.

**Cosa non fa**

- Non si connette a internet: nessun servizio esterno, nessuna intelligenza artificiale, nessuna telemetria.
- Non scrive in chat pubblica da solo con le impostazioni predefinite, e mai senza un'azione del giocatore (tranne la modalità `auto`, che scegli tu con una conferma).
- Non genera testi: sceglie fra quelli che esistono.
- Non legge il log di combattimento e non prende decisioni sui valori che il client nasconde agli addon.
- Non salva il contenuto della chat, né i testi dei whisper.
- Non inventa missioni né ricompense: le storie e i dialoghi sono racconti dell'addon, non quest del server.

**Previsto, ma non ancora presente** (vedi [ROADMAP.md](ROADMAP.md)): il gioco sociale tra giocatori (M4: messaggi tra addon, solo con consenso esplicito), l'audio, i contenuti fino a 1.000 intenzioni e la release 1.0 (M5). Nelle impostazioni i moduli *Social* e *Audio* si possono già vedere, ma sono solo segnaposto (segnati con `*`): non fanno nulla.

## Requisiti

- **World of Warcraft: Forever**, `## Interface: 16001`. La build di riferimento è la 1.60.1.70658 (client in inglese).
- Nessuna dipendenza obbligatoria.
- Facoltativo: **Total RP 3**.

Altri client (retail, Classic Era, ecc.) non sono supportati né provati. L'addon controlla le API che usa, quindi un client diverso dovrebbe al più disattivare delle funzioni, ma non è garantito.

## Installazione

Non ci sono ancora versioni pacchettizzate (release o pagine di distribuzione). Per ora:

1. Scarica il repository (`Code` → `Download ZIP`, oppure `git clone https://github.com/Finland6738/azeroth-unspoken`).
2. Copia **tutte le cartelle il cui nome comincia con `AzerothUnspoken`** in `World of Warcraft\_forever_\Interface\AddOns\`: l'addon (`AzerothUnspoken`), le frasi di ogni lingua (`AzerothUnspoken_enUS`, `AzerothUnspoken_itIT`) e di ogni continente (`AzerothUnspoken_Kalimdor`, `AzerothUnspoken_EasternKingdoms` e le loro cartelle `_enUS`/`_itIT`). L'addon carica da solo solo la lingua scelta e solo il continente in cui ti trovi, fuori dal combattimento: non devi mai scegliere una cartella.
3. Facoltativo: `AzerothUnspoken_Example`, un pacchetto di frasi di esempio (una frase per la pesca e alcune legate a luoghi), e `AzerothUnspoken_Versi`, un prototipo di forme letterarie: iscrizioni, versi ricordati, filastrocche da locanda, canzoni di viaggio, un inno e un lamento, solo nel tuo narratore privato.
4. Alla schermata di selezione del personaggio apri **AddOn** e controlla che tutte le voci *Azeroth Unspoken* siano spuntate (le cartelle delle lingue e dei continenti sono segnate *Caricamento su richiesta*: è normale).

Le cartelle `Tests`, `docs`, `archive` e il resto del repository non servono al gioco: non copiarli.

Per aggiornare, cancella tutte le cartelle `AzerothUnspoken*` e copia le nuove (una versione nuova può aggiungere cartelle). Cambiare la lingua delle frasi richiede di ricaricare l'interfaccia: l'addon lo propone con un pulsante. Le impostazioni stanno in `WTF\Account\<account>\SavedVariables\AzerothUnspokenDB.lua` e, per personaggio, in `AzerothUnspokenCharacterDB.lua`: non vengono toccate.

## Primo avvio

Pochi secondi dopo l'ingresso in gioco compare una **procedura guidata** di 6 passi (7 se Total RP 3 è presente): lingua, tipo di esperienza, intensità, stile, moduli, Total RP 3 e chat con una frase di prova. È saltabile in qualunque momento e si riapre con `/au wizard`.

Con le impostazioni predefinite l'addon è **silenzioso verso gli altri**: le frasi compaiono solo nel riquadro del narratore, in basso al centro.

Scrivi `/au` per l'elenco dei comandi e `/au debug` per controllare che tutto sia a posto. Se qualcosa non funziona, `/au debug full` stampa una riga per ogni capacità del client.

## Comandi

L'addon è **prima di tutto in inglese**: un'installazione nuova parte in inglese, sia per l'interfaccia sia per le frasi, e l'italiano è la seconda lingua (si sceglie nella procedura guidata o con `/au language it`; una scelta italiana già salvata resta). **I nomi dei comandi e dei loro argomenti sono sempre in inglese**, in qualunque lingua dell'interfaccia: la lingua cambia le descrizioni e i messaggi, mai le parole da digitare. Se scrivi una parola italiana come `/au diario`, l'addon ti indica il comando inglese (`/au journal`).

L'addon risponde a `/au` e a `/unspoken`. Ogni comando ha un solo nome, inglese; le uniche altre forme sono le forme brevi `/au lang` e `/au rel` e i nomi dei canali `s`, `e`, `p`, `g`, `i`.

| Comando | Effetto |
|---|---|
| `/au help` | elenco dei comandi (anche `/au` da solo) |
| `/au on` · `/au off` | accende o spegne le frasi automatiche |
| `/au pause` | pausa immediata del narratore, solo per la sessione; di nuovo per riprendere |
| `/au language [it\|en]` | lingua delle frasi e dell'interfaccia (forma breve `/au lang`); la predefinita è l'inglese |
| `/au intensity <0-100>` | quanto spesso parla il narratore: 0 = muto per gli eventi spontanei, 50 = bilanciato, 100 = intenso |
| `/au depth natural\|literary\|elevated` | profondità dello stile: le frasi scritte per quel tono pesano di più (le altre restano possibili) |
| `/au mode private\|preview\|confirm\|auto` | che cosa può arrivare in chat; predefinito: `private`. `auto` non si attiva al primo comando: mostra un avviso e va ripetuto entro 10 secondi |
| `/au channel auto\|say\|emote\|party\|raid\|guild\|instance` | canale predefinito delle proposte (forme brevi `s`, `e`, `p`, `g`, `i`) |
| `/au speak` | come il tasto "pronuncia": conferma la proposta in attesa, oppure ne propone una nuova |
| `/au cancel` | scarta la proposta in attesa |
| `/au another` | un'altra frase al posto di quella in attesa, o una nuova proposta (è anche il pulsante «Un'altra» del riquadro) |
| `/au copy` | copia la proposta nella casella della chat (la invii tu con Invio): è il pulsante "Nella chat" |
| `/au narrator [history\|reset\|clear]` | senza argomenti mostra una frase di prova; `history` apre le frasi recenti, `reset` riporta il riquadro al centro, `clear` svuota la cronologia |
| `/au greet` · `farewell` · `toast` · `muse` · `threat` · `battlecry` · `pray` · `victory` · `thanks` · `jest` | chiede una frase per quel momento. Compare come proposta o nel narratore, secondo la modalità chat |
| `/au cast <spell>` | frase per un incantesimo, utile nelle macro |
| `/au event <name>` | lancia un evento con il nome dato (anche definito da un pacchetto) |
| `/au test <event>` | anteprima in chat locale (non invia nulla) |
| `/au chance [<event> <0-100>]` | probabilità di un evento; senza argomenti elenca i valori |
| `/au cooldown <seconds>` | pausa minima tra due frasi automatiche |
| `/au ignore <spell>` | un incantesimo non produce più frasi; senza argomenti elenca quelli ignorati |
| `/au button` | mostra o nasconde il pulsante "pronuncia" |
| `/au soul` | apre la finestra del carattere del personaggio. Anche `list`, `neutral`, `archetype <id>`, `trp3 on\|off`, `<trait> <value>` (`temperament`, `morality`, `curiosity`, `faith`, `motivation`, `irony`, `voice`; `-` toglie la scelta) e `avoid <topic>` |
| `/au journal` | apre il diario del personaggio (ricordi, luoghi, flag, sessione). Anche `list`, `places`, `flag <name>`, `export`, `pin <n>`, `delete <n>`, `forget <place>` e `reset [all\|memories\|ordinary\|places\|flags]` (chiede conferma) |
| `/au stories` | le storie personali: `list`, `journal`, `choose <arc> <option>`, `start`, `suspend`, `resume`, `skip`, `disable`, `enable` (un arco o `all`), `max <1\|2>`, `on`, `off`, `status` |
| `/au relationships` | apre la finestra delle relazioni (tabella ordinabile e filtrabile, persone proposte, dettaglio con cursori, note e tag); forma breve `/au rel`. Anche `list`, `people`, `add <name>`, `dismiss <name>`, `remove <name\|npc:ID>`, `detail <name>`, `note`, `tags`, `label`, `set <name> <axis> <value>`, `export`, `auto on\|off`, `attraction on\|off`, `reset` |
| `/au place` | dove sei secondo l'addon: zona, uiMapID, territorio, tag, istanza, scontro, ruolo nel gruppo (serve a verificare i dati dei luoghi in gioco) |
| `/au who` | chi hai davanti secondo l'addon (ruolo, carattere, razza, azioni recenti, rapporto e fonte di ogni dato). Anche `trp3 on\|off` (consenso a leggere il profilo pubblico Total RP 3 **degli altri**) e `trait <trait> <value>` per correggere a mano un tratto dell'interlocutore |
| `/au talk` | il dialogo ambientale con l'NPC in corso, oppure apre l'offerta se c'è un'interazione valida. Anche `test` (NPC di prova, senza tracce), `close`, `role <role>` (dici tu che ruolo ha l'NPC), `offer on\|off` (il pulsante automatico), `status` |
| `/au packs` · `/au pack <id> on\|off` | elenca o accende e spegne i pacchetti di frasi |
| `/au validate [full\|<pack>]` | il validatore dei testi: id doppi, lingue mancanti, segnaposto, condizioni, lunghezze, tag, copioni e archi (`full` mostra ogni problema) |
| `/au stats` | quante frasi sono disponibili, per evento |
| `/au memory` | azzera la memoria delle **frasi usate** (quelle già dette, per non ripeterle; senza conferma). Non tocca i ricordi del diario: per quelli c'è `/au journal reset` |
| `/au options` | apre il pannello delle impostazioni |
| `/au wizard` | riapre la procedura guidata |
| `/au debug [full\|trace]` | diagnostica: capacità del client, ultimi eventi, errori intercettati; `trace` stampa ogni evento riconosciuto, per la sessione |
| `/au prof [reset\|copy]` | profilo della sessione: tempi della scelta delle frasi, memoria, quante volte il narratore ha parlato o taciuto e perché; `copy` apre una finestra per copiarlo |
| `/au probe [reset\|stop\|copy]` | prova le API del client che servono alle prossime funzioni e stampa AVAILABLE / MISSING / RESTRICTED con un esempio; conta i loro eventi per la sessione |

**Tasti.** In *Opzioni → Comandi → AddOn → Azeroth Unspoken* si possono assegnare quattro tasti: *Conferma e pronuncia la frase proposta (o improvvisa)* (`AZEROTHUNSPOKEN_SPEAK`), *Un'altra frase* (`AZEROTHUNSPOKEN_REROLL`), *Pausa immediata del narratore* (`AZEROTHUNSPOKEN_PAUSE`) e *Dialogo ambientale con l'NPC* (`AZEROTHUNSPOKEN_NPC`: apre o chiude il dialogo). Nessuno ha un tasto predefinito.

## Impostazioni

Il pannello si apre con `/au options` (è registrato anche tra le opzioni degli addon del gioco: la registrazione non è ancora stata verificata nel client vero). Contiene:

- **Lingua** delle frasi e dell'interfaccia, indipendente dalla lingua del client.
- **Intensità** (0–100) e **profondità dello stile** (Naturale, Letterario, Elevato).
- **Pausa tra le frasi** automatiche (45 secondi predefiniti).
- **Chat**: la modalità e il canale predefinito.
- **Riquadro del narratore**: durata del testo, opacità, dimensione, posizione bloccata, cronologia, prova.
- **Moduli**: Personale, Mondo, Dialoghi NPC, Memoria, Relazioni, Storie, Social, Proposte in chat, Audio (quelli non ancora attivi, *Social* e *Audio*, sono segnati con `*`), più i preset *Completo*, *RPG personale*, *Mondo narrativo* e *Social RP*.
- Il pulsante "pronuncia", il nome da Total RP 3 e, con un consenso a parte, la lettura dei profili pubblici degli altri (*Leggi il Total RP 3 degli altri*), il carattere del personaggio (`/au soul`), la pausa immediata, la procedura guidata.
- Alcune scelte si fanno **solo da comando**: gli assi e le persone delle relazioni (`/au relationships`), l'attrazione e la registrazione automatica dei giocatori (`/au relationships attraction|auto`), l'offerta automatica del dialogo NPC (`/au talk offer`) e il numero massimo di storie attive (`/au stories max`).

## Privacy e chat

- **Tutto resta sul tuo computer.** L'addon non apre connessioni, non scarica nulla e non invia dati. Non c'è nemmeno un modulo social attivo (è pianificato, con consenso esplicito e disattivato per impostazione predefinita).
- **Non viene salvato il contenuto della chat**, né i whisper: l'addon non conserva mai il testo di un messaggio. Di un'emote rivolta a te ricorda in sessione solo *che* è arrivata (il testo si scarta), e di un whisper che hai inviato solo il nome del destinatario, in memoria, per proporlo come persona da aggiungere.
- **Che cosa viene salvato.** Per account: le impostazioni (`AzerothUnspokenDB`). Per personaggio (`AzerothUnspokenCharacterDB`): la memoria delle frasi usate, la personalità scelta, i **ricordi** del diario (luoghi, momenti significativi, flag), le **relazioni** (gli NPC incontrati e, **solo i giocatori che hai scelto tu**, il loro nome con le note, i tag e le etichette *personali* che scrivi tu) e lo stato delle **storie**. Non c'è nessun testo di chat, nessuna battuta dei dialoghi, nessun dato di un giocatore che non hai aggiunto tu. Il diario e le relazioni si possono cancellare in ogni momento (`/au journal reset`, `/au relationships reset`). La cronologia del narratore sta solo in memoria e sparisce con la sessione.
- **Relazioni.** Un giocatore entra nella lista delle relazioni **solo con un tuo clic o comando**; l'opzione «registra automaticamente chi incontro» esiste ma è spenta per impostazione predefinita. L'addon *propone* (gruppo, scambi, persone a cui hai risposto), non registra.
- **Total RP 3 degli altri, solo con consenso.** I dati pubblici (razza, classe e tratti psicologici) dei profili Total RP 3 di altri giocatori si leggono **solo** se attivi `/au who trp3 on` (o l'opzione nelle impostazioni), spento per impostazione predefinita; mai note, storia o campi privati, e non si salvano.
- **Nulla in chat senza un'azione del giocatore.** Il *Chat Gateway* ha quattro modalità:

| Modalità | Che cosa succede |
|---|---|
| `privato` (predefinita) | le frasi restano nel narratore, mai in chat |
| `anteprima` | le frasi del personaggio diventano proposte; il tasto "pronuncia" apre l'editor e invii con Invio |
| `conferma` | la proposta è pronta e un clic, un tasto o `/au speak` la inviano; puoi modificarla, cambiare canale o scartarla |
| `auto` | **solo se la scegli tu, con un avviso e una conferma**: partono da sole le emote e, nelle istanze, `/say`; tutto il resto resta una proposta |

- La voce *interiore* e quella degli *NPC* non vanno mai in chat. Nemmeno i dialoghi ambientali e le storie personali: restano nel narratore e nella loro finestra.
- Ci sono limiti di frequenza (almeno 4 secondi tra due invii, al massimo 6 al minuto, 2 in automatico), un tetto di 255 byte per messaggio e nessun invio durante il blocco della chat del client.
- La regola "emote da sole, `/say` da solo solo nelle istanze" è un'ipotesi prudente sul comportamento del client, **non ancora misurata in gioco**.

Le decisioni dietro a questi comportamenti sono nelle [ADR](docs/adr/README.md), in particolare la [0002](docs/adr/0002-fully-offline-no-ai.md) e la [0003](docs/adr/0003-private-narrator-and-chat-gateway.md).

## Total RP 3

L'integrazione è **facoltativa**: l'addon funziona al 100% anche senza. Se Total RP 3 è presente, può leggere tre cose, ciascuna con un suo interruttore:

1. **Il nome del tuo profilo** (*Nome da Total RP 3* nelle impostazioni, acceso per impostazione predefinita) per usarlo nelle frasi.
2. **I tratti psicologici pubblici del tuo profilo** (`/au soul trp3 on`, spento per impostazione predefinita) per il carattere del personaggio; una scelta fatta a mano ha sempre la precedenza.
3. **I dati pubblici di altri giocatori** (`/au who trp3 on`, o *Leggi il Total RP 3 degli altri* nelle impostazioni, spento per impostazione predefinita; serve anche il punto 1): solo razza, classe e tratti caratteriali, per far reagire il narratore a chi hai davanti. Mai note, storia o campi privati, e non si salva nulla di ciò che si legge.

L'addon non scrive nulla in Total RP 3. Se le API di Total RP 3 mancano o cambiano, l'integrazione si spegne da sola. Vedi [ADR 0004](docs/adr/0004-total-rp-3-optional-with-adapter.md) e [ADR 0016](docs/adr/0016-character-soul-opt-in-traits-and-total-rp-3-with-consent.md).

## Pacchetti di frasi

Le frasi non stanno nel motore: stanno in pacchetti. Quelli di base sono in `AzerothUnspoken/Data/`; altri si aggiungono come addon separati che dipendono da `AzerothUnspoken` (vedi `AzerothUnspoken_Example`). Un pacchetto può aggiungere frasi, cornici narrative, vocabolario, traduzioni, nuove lingue, nuovi eventi, luoghi, NPC, dialoghi e storie.

La guida completa è in [AzerothUnspoken/PACK_FORMAT.md](AzerothUnspoken/PACK_FORMAT.md): descrive lo schema dati v2 (regole separate dai testi, varianti, voci, registri, profondità, tag di personalità, condizioni di memoria, relazioni, interlocutore e luogo), i dialoghi ambientali e le storie personali. **Gli esempi della guida sono provati dai test** come pacchetti esterni. Per scrivere frasi buone, leggi anche [CONTRIBUTING.md](CONTRIBUTING.md).

## Stato del progetto

| Cosa | Stato |
|---|---|
| **M0 Fondamenta**: architettura, compatibilità, diagnostica (S1); narratore privato, Chat Gateway, impostazioni, procedura guidata (S2) | **fatto**, provato solo fuori dal gioco |
| G1 Prova in gioco ([checklist](docs/G1_checklist.md)) | **da fare**, rimandata: serve l'utente con il client vero |
| **M1 Narrative Alpha**: schema dati v2 e validatore (S3), Narrative Director (S4), personalità e Total RP 3 (S5), memoria e diario (S6), relazioni (S6b), interlocutore e luogo (S6c), contenuti Alpha (S7) | **fatto**, provato solo fuori dal gioco |
| G2 Prova in gioco: arrivo nella foresta e ritorno (passi 65–68) | **da fare** |
| **M2 Living NPC**: NPC Alive, dialoghi ambientali (S8) | **fatto**, non provato in gioco |
| G3 Prova in gioco: il locandiere (passi 75–83) | **da fare** |
| **M3 Personal Stories**: Story Arcs (S9) | **fatto**, non provato in gioco (passi 84–92) |
| M4 Social RP (S10, prova G4 con due client), M5 release 1.0 (S11–S12) | da fare |

**Che cosa non è verificato.** Tutto ciò che richiede il client vero: gli eventi e le API del client (gossip, mercante, mappe, istanze, scontri), i numeri dei luoghi e degli NPC (`uiMapID`, `instanceID`, `npcID`: vengono dalla numerazione di Classic Era, issue [#36](https://github.com/Finland6738/azeroth-unspoken/issues/36)), l'aspetto reale delle finestre, il salvataggio delle SavedVariables, l'integrazione con Total RP 3 e, soprattutto, **il tono, il ritmo e la frequenza** delle frasi: i test controllano struttura, conteggi e regole, non la qualità letteraria. Le prove in gioco (G1–G4) sono nella [checklist](docs/G1_checklist.md); i problemi trovati diventeranno issue con l'etichetta `in-game`.

Il piano dettagliato, gli step e le note per chi sviluppa sono in [ROADMAP.md](ROADMAP.md). Le modifiche rilevanti per versione sono in [CHANGELOG.md](CHANGELOG.md). I problemi noti e le idee sono nelle [issue](https://github.com/Finland6738/azeroth-unspoken/issues).

## Sviluppo e test

Il repository ha questa struttura:

| Percorso | Contenuto |
|---|---|
| `AzerothUnspoken/` | l'addon (`Core/`, `Engine/`, `Systems/`, `Integration/`, `UI/`, `Data/`) |
| `AzerothUnspoken_enUS/`, `AzerothUnspoken_itIT/` | pacchetti di lingua: i testi delle frasi in una lingua, caricati solo per la lingua scelta |
| `AzerothUnspoken_Kalimdor*/`, `AzerothUnspoken_EasternKingdoms*/` | pacchetti regionali: le frasi legate a un continente (regole e testi per lingua), caricate solo lì |
| `AzerothUnspoken_Example/` | pacchetto di frasi di esempio |
| `AzerothUnspoken_Versi/` | pacchetto dei versi: prototipo di forme letterarie (iscrizioni, canzoni, filastrocche) |
| `Tests/` | test fuori dal gioco |
| `docs/` | specifica (GDD), architettura, ADR, riferimenti tecnici, checklist di prova |
| `archive/VociDiAzeroth*/` | prototipo originale, solo come riferimento |
| `ROADMAP.md` | milestone, step e stato di avanzamento |

**Test fuori dal gioco.** Usano [lupa](https://github.com/scoder/lupa), cioè Lua 5.1 come WoW, e un client simulato (`Tests/MockWoWAPI.lua`). Dalla radice del progetto:

```bash
python -m venv .venv
.venv/Scripts/python -m pip install lupa
.venv/Scripts/python -I -X utf8 Tests/run_tests.py AzerothUnspoken
```

Su Linux e macOS il percorso è `.venv/bin/python`. Il comando esce con codice 1 se un controllo fallisce. La cartella `.venv/` è locale e non va nel repository.

**Editor.** Il progetto è pensato per JetBrains WebStorm con i plugin **EmmyLua** e **WoW Lua Language Server**. `.luarc.json` imposta Lua 5.1, le variabili globali dell'addon e le cartelle da ignorare; le API di WoW sono fornite dal plugin e non si duplicano nel progetto. Le API pubbliche e le strutture dati sono annotate con EmmyLua.

**Dump delle API di Forever.** Per sapere se una funzione o un evento esistono nel client si consulta il dump di [Atraeau/WoW-Addons](https://github.com/Atraeau/WoW-Addons), clonato accanto al progetto (`..\WoW-Addons`) e **mai copiato** nel nostro repository. Vedi [docs/REFERENCES.md](docs/REFERENCES.md) e l'[ADR 0010](docs/adr/0010-forever-api-dump-as-reference.md).

Per contribuire (frasi, pacchetti, codice, issue) leggi [CONTRIBUTING.md](CONTRIBUTING.md).

## Documentazione

**Manuale per i giocatori:** il [wiki](https://github.com/Finland6738/azeroth-unspoken/wiki) è una guida completa all'uso (installazione, tutti i comandi e le impostazioni, ogni funzione, privacy, risoluzione dei problemi, domande frequenti), in inglese. La sua fonte è [docs/wiki/](docs/wiki/Home.md).

L'indice completo è in [docs/README.md](docs/README.md). La documentazione è in inglese, tranne la checklist delle prove in gioco e la specifica di progetto originale, che sono in italiano. I punti di partenza (in inglese, salvo diversa indicazione):

- [docs/ARCHITECTURE.md](docs/ARCHITECTURE.md): moduli, flusso di un evento, dati, punti di estensione.
- [docs/adr/README.md](docs/adr/README.md): le decisioni di progetto, una per file.
- [docs/Immersion_Director_GDD_v1.0.md](docs/Immersion_Director_GDD_v1.0.md): la specifica di prodotto, in italiano (nel GDD il prodotto si chiama ancora "Immersion Director").
- [AzerothUnspoken/PACK_FORMAT.md](AzerothUnspoken/PACK_FORMAT.md): come scrivere un pacchetto.
- [docs/G1_checklist.md](docs/G1_checklist.md): la checklist delle prove in gioco, in italiano.

## Supporto e feedback

- **Bug e richieste di funzioni:** apri una issue con uno dei [moduli per le issue](https://github.com/Finland6738/azeroth-unspoken/issues/new/choose). Il modulo **Bug report** serve per qualcosa che non funziona come previsto (chiede la versione dell'addon, la build e la lingua del client e che cosa è successo); il modulo **Feature request** serve a proporre una nuova funzione o un miglioramento, descritta dal punto di vista del tuo gioco di ruolo. Non incollare in una issue nomi di altri giocatori, whisper, log della chat, nomi di account o percorsi di cartelle del tuo PC: usa segnaposto come `<player>` o `<account>`.
- **Feedback, idee e domande:** usa la [categoria Feedback delle GitHub Discussions](https://github.com/Finland6738/azeroth-unspoken/discussions/categories/feedback), per commenti generali, per parlarne prima di una richiesta formale o quando non sei sicuro che sia un bug.
- Scrivi issue e feedback preferibilmente **in inglese**, ma l'italiano va bene.

## Licenza

**Licenza da definire.** Finché non è scelta, vale il diritto d'autore predefinito: tutti i diritti sono riservati. Le opzioni (codice e testi) sono discusse nell'[issue #2](https://github.com/Finland6738/azeroth-unspoken/issues/2).

## Crediti

- Ideazione e sviluppo: Finland6738.
- Riferimenti tecnici consultati (non copiati): [Atraeau/WoW-Addons](https://github.com/Atraeau/WoW-Addons) per il dump delle API di Forever; [Warcraft Wiki](https://warcraft.wiki.gg/wiki/World_of_Warcraft_API) per la documentazione generale delle API. Elenco completo in [docs/REFERENCES.md](docs/REFERENCES.md).
- [Total RP 3](https://totalrp3.info/) è un addon dei suoi autori; Azeroth Unspoken lo usa solo come integrazione facoltativa.
- Se in futuro si useranno dati di [ForeverDB.net](https://foreverdb.net/) per preparare i registri locali, verrà citato qui con un link visibile.

*World of Warcraft® è un marchio di Blizzard Entertainment, Inc. Azeroth Unspoken è un progetto di fan, indipendente e non affiliato né approvato da Blizzard. Le frasi sono originali e non riproducono testi del gioco.*
