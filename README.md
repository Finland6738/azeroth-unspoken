# Azeroth Unspoken

*An immersive roleplay companion for World of Warcraft*

> 🇬🇧 [English version](README.en.md)

Un compagno narrativo immersivo per World of Warcraft, distintivo e misterioso, che richiama i pensieri e le storie non espresse.

Azeroth Unspoken è un addon per **World of Warcraft: Forever** (Interface `16001`). Contiene un motore narrativo locale e un database di frasi curate, in italiano e in inglese, che reagiscono ai luoghi, agli eventi e alle azioni del personaggio: una zona nuova, un combattimento, una ferita grave, un livello guadagnato, un saluto.

> **Stato: versione 0.1.0, in sviluppo.** Il codice è stato provato solo fuori dal gioco, con un client simulato. La prova nel client vero (checklist [G1](docs/G1_checklist.md)) non è ancora stata fatta: aspettati sorprese. Vedi [Stato del progetto](#stato-del-progetto).

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
- [Licenza](#licenza)
- [Crediti](#crediti)

## Cosa fa e cosa non fa

**Cosa fa (oggi, nella versione 0.1.0)**

- Ascolta alcuni eventi del gioco (entrata in una zona, inizio e fine di un combattimento, salute bassa, morte e ritorno in vita, livello, incantesimi lanciati) e, con una probabilità e una pausa regolate dall'intensità che scegli, ti mostra una frase adatta al momento.
- Le frasi sono **intere e scritte a mano**, non composte a caso da frammenti: 374 frasi in italiano e in inglese, divise in frasi parlate (354) e narrative (20), organizzate per evento, tono e condizioni (razza, classe, zona, ora del giorno, bersaglio, gruppo, istanza…).
- Le mostra in un **riquadro del narratore** privato, visibile solo a te: spostabile, con durata, opacità e dimensione regolabili, cronologia recente e pausa immediata.
- Tiene a mente le frasi usate di recente, per evitare ripetizioni (la memoria è salvata per personaggio).
- Se vuoi, trasforma le frasi del personaggio in **proposte per la chat** che confermi, modifichi o scarti tu. Vedi [Privacy e chat](#privacy-e-chat).
- Se vuoi, dà al personaggio un **carattere** (temperamento, morale, curiosità, fede, motivazione, ironia, voce interiore, argomenti da evitare, o un archetipo pronto): le frasi in sintonia escono più spesso e quelle che contraddicono ciò che hai escluso non escono mai. È tutto facoltativo; senza scelte il narratore resta neutro. Vedi `/au anima`.
- Ricorda i momenti significativi del personaggio (la prima volta in una zona, il ritorno, una visita finita male, le morti, i livelli) e li ritrova nelle frasi: **solo se il ricordo esiste davvero**. Un **diario** (`/au diario`) li mostra, li fa cancellare o rendere permanenti e li esporta come testo da copiare. Non salva mai chat o whisper.
- Ricorda **come stai con le persone**: sei assi indipendenti (familiarità, fiducia, rispetto, affetto, timore, lealtà; l'attrazione è facoltativa e spenta) danno un'etichetta (sconosciuto, conoscente, amico, compagno d'armi, rivale rispettato, nemico...) e una disposizione. Gli **NPC** si calcolano da soli (dialoghi, quest, mercanti); i **giocatori** li scegli tu: l'addon propone, non registra nessuno senza un tuo clic. Il narratore cambia tono col rapporto, dal formale all'intimo. Vedi `/au relazioni`. Non legge né salva chat o whisper.
- **Dialoghi ambientali con gli NPC** (NPC Alive): quando apri il mercato, il volo o l'addestramento di un NPC, o parli con un locandiere noto, compare un piccolo pulsante; premendolo si apre una finestra separata, etichettata **«dialogo ambientale dell'addon»**, con una battuta dell'NPC e da una a tre risposte neutre. È un dialogo **simulato**: non compare mai in chat, non tocca gossip, quest o commercio, e non cambia nulla nel gioco; le scelte lasciano solo un flag nel diario. L'NPC parla secondo il suo carattere (burbero, gioviale...) e se lo conosci. Vedi `/au npc` (con `prova` per provare la finestra senza un NPC vero).
- Racconta **piccole storie personali** (Story Arcs): il ritorno nel luogo da cui è cominciata l'avventura, un volto che incontri sempre più spesso, una caduta e il ritorno, il viaggio tra le capitali. Sono racconti del tuo personaggio, **non missioni**: nessuna ricompensa, nessun effetto sul gioco. Cominciano solo da un evento vero, sono al massimo due alla volta, le scelte che contano le fai tu, e le puoi sospendere, saltare o disattivare quando vuoi (`/au storie`, scheda «Storie» del diario). Alla fine lasciano un ricordo nel diario.
- Ti guida al primo avvio con una procedura guidata saltabile.
- Ha una diagnostica (`/au debug`) che mostra che cosa il tuo client permette di fare all'addon.
- Si estende con **pacchetti di frasi** in addon separati, senza toccare il motore.

**Cosa non fa**

- Non si connette a internet: nessun servizio esterno, nessuna intelligenza artificiale, nessuna telemetria.
- Non scrive in chat pubblica da solo con le impostazioni predefinite.
- Non genera testi: sceglie fra quelli che esistono.
- Non legge il log di combattimento e non prende decisioni sui valori che il client nasconde agli addon.
- Non salva il contenuto della chat.

**Previsto, ma non ancora presente** (vedi [ROADMAP.md](ROADMAP.md)): storie a più capitoli, gioco sociale tra giocatori, contenuti fino a 1.000 intenzioni. Nelle impostazioni alcuni moduli (storie, social, audio) si possono già attivare o spegnere, ma sono solo segnaposto: oggi hanno effetto solo i moduli *Personale*, *Mondo*, *Memoria*, *Relazioni*, *Dialoghi NPC*, *Proposte in chat* e *Total RP 3*. Anche la profondità dello stile (Naturale, Letterario, Elevato) si salva ma **nessuna frase la usa ancora**.

## Requisiti

- **World of Warcraft: Forever**, `## Interface: 16001`. La build di riferimento è la 1.60.1.70658 (client in inglese).
- Nessuna dipendenza obbligatoria.
- Facoltativo: **Total RP 3**.

Altri client (retail, Classic Era, ecc.) non sono supportati né provati. L'addon controlla le API che usa, quindi un client diverso dovrebbe al più disattivare delle funzioni, ma non è garantito.

## Installazione

Non ci sono ancora versioni pacchettizzate (release o pagine di distribuzione). Per ora:

1. Scarica il repository (`Code` → `Download ZIP`, oppure `git clone https://github.com/Finland6738/azeroth-unspoken`).
2. Copia la cartella `AzerothUnspoken` in `World of Warcraft\_forever_\Interface\AddOns\`.
3. Facoltativo: copia anche `AzerothUnspoken_Example`, un pacchetto di frasi di esempio (una frase per la pesca e alcune legate a luoghi).
4. Alla schermata di selezione del personaggio apri **AddOn** e controlla che *Azeroth Unspoken* sia spuntato.

Le cartelle `Tests`, `docs`, `archive` e il resto del repository non servono al gioco: non copiarli.

Per aggiornare, sostituisci la cartella `AzerothUnspoken` con quella nuova. Le impostazioni stanno in `WTF\Account\<account>\SavedVariables\AzerothUnspokenDB.lua` e, per personaggio, in `AzerothUnspokenCharacterDB.lua`: non vengono toccate.

## Primo avvio

Pochi secondi dopo l'ingresso in gioco compare una **procedura guidata** di 6 passi (7 se Total RP 3 è presente): lingua, tipo di esperienza, intensità, stile, moduli, Total RP 3 e chat con una frase di prova. È saltabile in qualunque momento e si riapre con `/au benvenuto`.

Con le impostazioni predefinite l'addon è **silenzioso verso gli altri**: le frasi compaiono solo nel riquadro del narratore, in basso al centro.

Scrivi `/au` per l'elenco dei comandi e `/au debug` per controllare che tutto sia a posto. Se qualcosa non funziona, `/au debug full` stampa una riga per ogni capacità del client.

## Comandi

L'addon risponde a `/au` e a `/unspoken`. Quasi tutti i comandi hanno anche un nome inglese (tra parentesi).

| Comando | Effetto |
|---|---|
| `/au` · `/au aiuto` (`help`) | elenco dei comandi |
| `/au on` · `/au off` | accende o spegne le frasi automatiche |
| `/au pausa` (`pause`) | pausa immediata del narratore, solo per la sessione; di nuovo per riprendere |
| `/au lingua [it\|en]` (`language`) | lingua delle frasi e dell'interfaccia |
| `/au intensita <0-100>` (`intensity`) | quanto spesso parla il narratore: 0 = muto per gli eventi spontanei, 50 = bilanciato, 100 = intenso |
| `/au profondita naturale\|letterario\|elevato` (`depth`) | profondità dello stile (si salva, ma oggi nessuna frase la usa) |
| `/au chat privato\|anteprima\|conferma\|auto` (`modo`, `mode`) | che cosa può arrivare in chat; predefinito: `privato`. `auto` non si attiva al primo comando: mostra un avviso e va ripetuto entro 10 secondi |
| `/au canale auto\|say\|emote\|gruppo\|incursione\|gilda\|istanza` (`channel`) | canale predefinito delle proposte |
| `/au dire` (`speak`, `invia`, `send`) | come il tasto "pronuncia": conferma la proposta in attesa, oppure ne propone una nuova |
| `/au annulla` (`scarta`, `cancel`, `discard`) | scarta la proposta in attesa |
| `/au copia` (`copy`) | copia la proposta nella casella della chat (la invii tu con Invio): è il pulsante "Nella chat" |
| `/au narratore [cronologia\|reset\|pulisci]` (`narrator`) | senza argomenti mostra una frase di prova; `cronologia` apre le frasi recenti, `reset` riporta il riquadro al centro, `pulisci` svuota la cronologia |
| `/au saluto` · `addio` · `brindisi` · `pensiero` · `minaccia` · `grido` · `preghiera` · `vittoria` · `ringrazia` · `scherzo` | chiede una frase per quel momento (`greet`, `farewell`, `toast`, `muse`, `threat`, `battlecry`, `pray`, `victory`, `thanks`, `jest`). Compare come proposta o nel narratore, secondo la modalità chat |
| `/au incanta <incantesimo>` (`cast`) | frase per un incantesimo, utile nelle macro |
| `/au evento <nome>` (`event`) | lancia un evento con il nome dato (anche definito da un pacchetto) |
| `/au prova <evento>` (`test`) | anteprima in chat locale (non invia nulla) |
| `/au prob [<evento> <0-100>]` (`chance`) | probabilità di un evento; senza argomenti elenca i valori |
| `/au cooldown <secondi>` | pausa minima tra due frasi automatiche |
| `/au ignora <incantesimo>` (`ignore`) | un incantesimo non produce più frasi; senza argomenti elenca quelli ignorati |
| `/au pulsante` (`button`) | mostra o nasconde il pulsante "pronuncia" |
| `/au anima` (`soul`) | apre la finestra del carattere del personaggio. Anche `lista`, `neutro`, `archetipo <id>`, `trp3 on\|off`, `<tratto> <valore>` (`temperamento`, `morale`, `curiosita`, `fede`, `motivazione`, `ironia`, `voce`; `-` toglie la scelta) ed `evita <argomento>` |
| `/au diario` (`journal`, `diary`) | apre il diario del personaggio (ricordi, luoghi, flag, sessione). Anche `lista`, `luoghi`, `flag <nome>`, `esporta`, `permanente <n>`, `elimina <n>`, `dimentica <luogo>` e `reset [tutto\|ricordi\|ordinari\|luoghi\|flag]` (chiede conferma) |
| `/au storie` (`stories`, `arcs`) | le storie personali: `lista`, `diario`, `scegli <arco> <opzione>`, `inizia`, `sospendi`, `riprendi`, `salta`, `disattiva`, `attiva` (un arco o `tutte`), `max <1\|2>`, `on`, `off`, `stato` |
| `/au relazioni` (`relations`, `relationships`) | apre la finestra delle relazioni (tabella ordinabile e filtrabile, persone proposte, dettaglio con cursori, note e tag). Anche `lista`, `persone`, `aggiungi <nome>`, `scarta <nome>`, `rimuovi <nome\|npc:ID>`, `dettaglio <nome>`, `nota`, `tag`, `etichetta`, `imposta <nome> <asse> <valore>`, `esporta`, `auto on\|off`, `attrazione on\|off`, `reset` |
| `/au pacchetti` (`packs`) · `/au pacchetto <id> on\|off` (`pack`) | elenca o accende e spegne i pacchetti di frasi |
| `/au info` (`stats`) | quante frasi sono disponibili, per evento |
| `/au memoria` (`memory`) | azzera la memoria delle frasi usate (senza conferma) |
| `/au opzioni` (`options`, `config`) | apre il pannello delle impostazioni |
| `/au benvenuto` (`wizard`, `welcome`) | riapre la procedura guidata |
| `/au debug [full\|trace]` | diagnostica: capacità del client, ultimi eventi, errori intercettati; `trace` stampa ogni evento riconosciuto, per la sessione |

**Tasti.** In *Opzioni → Comandi → AddOn → Azeroth Unspoken* si possono assegnare due tasti: *Conferma e pronuncia la frase proposta (o improvvisa)* e *Pausa immediata del narratore*.

## Impostazioni

Il pannello si apre con `/au opzioni` (è registrato anche tra le opzioni degli addon del gioco: la registrazione non è ancora stata verificata nel client vero). Contiene:

- **Lingua** delle frasi e dell'interfaccia, indipendente dalla lingua del client.
- **Intensità** (0–100) e **profondità dello stile** (Naturale, Letterario, Elevato).
- **Pausa tra le frasi** automatiche (45 secondi predefiniti).
- **Chat**: la modalità e il canale predefinito.
- **Riquadro del narratore**: durata del testo, opacità, dimensione, posizione bloccata, cronologia, prova.
- **Moduli**: Personale, Mondo, Dialoghi NPC, Memoria, Storie, Social, Proposte in chat, Audio (quelli non ancora attivi sono segnati con `*`), più i preset *Completo*, *RPG personale*, *Mondo narrativo* e *Social RP*.
- Il pulsante "pronuncia", il nome da Total RP 3, la pausa immediata, la procedura guidata.

## Privacy e chat

- **Tutto resta sul tuo computer.** L'addon non apre connessioni, non scarica nulla e non invia dati. Non c'è nemmeno un modulo social attivo (è pianificato, con consenso esplicito e disattivato per impostazione predefinita).
- **Non viene salvato il contenuto della chat.** Nei file salvati ci sono le impostazioni (account), la memoria delle frasi usate e i ricordi del personaggio (luoghi, momenti significativi, flag; per personaggio, solo ciò che il diario mostra). La cronologia del narratore sta solo in memoria e sparisce con la sessione.
- **Nulla in chat senza un'azione del giocatore.** Il *Chat Gateway* ha quattro modalità:

| Modalità | Che cosa succede |
|---|---|
| `privato` (predefinita) | le frasi restano nel narratore, mai in chat |
| `anteprima` | le frasi del personaggio diventano proposte; il tasto "pronuncia" apre l'editor e invii con Invio |
| `conferma` | la proposta è pronta e un clic, un tasto o `/au dire` la inviano; puoi modificarla, cambiare canale o scartarla |
| `auto` | **solo se la scegli tu, con un avviso e una conferma**: partono da sole le emote e, nelle istanze, `/say`; tutto il resto resta una proposta |

- La voce *interiore* e quella degli *NPC* non vanno mai in chat.
- Ci sono limiti di frequenza (almeno 4 secondi tra due invii, al massimo 6 al minuto, 2 in automatico), un tetto di 255 byte per messaggio e nessun invio durante il blocco della chat del client.
- La regola "emote da sole, `/say` da solo solo nelle istanze" è un'ipotesi prudente sul comportamento del client, **non ancora misurata in gioco**.

Le decisioni dietro a questi comportamenti sono nelle [ADR](docs/adr/README.md), in particolare la [0002](docs/adr/0002-tutto-offline-senza-ia.md) e la [0003](docs/adr/0003-narratore-privato-e-chat-gateway.md).

## Total RP 3

L'integrazione è **facoltativa**: l'addon funziona al 100% anche senza. Se Total RP 3 è presente e il modulo è acceso (`Nome da Total RP 3` nelle impostazioni), l'addon legge **il nome del tuo profilo** per usarlo nelle frasi. Con un consenso a parte (`/au anima trp3 on`, spento per impostazione predefinita) legge anche i **tratti psicologici pubblici del tuo profilo** per il carattere del personaggio; una scelta fatta a mano ha sempre la precedenza. Legge solo il **tuo** profilo, mai note o campi privati, e non scrive nulla in Total RP 3. Se le API di Total RP 3 mancano o cambiano, l'integrazione si spegne da sola. I dati pubblici di altri giocatori sono pianificati, sempre con consenso. Vedi [ADR 0004](docs/adr/0004-total-rp-3-facoltativo-con-adattatore.md).

## Pacchetti di frasi

Le frasi non stanno nel motore: stanno in pacchetti. Quelli di base sono in `AzerothUnspoken/Data/`; altri si aggiungono come addon separati che dipendono da `AzerothUnspoken` (vedi `AzerothUnspoken_Example`). Un pacchetto può aggiungere frasi, cornici narrative, vocabolario, traduzioni, nuove lingue e persino nuovi eventi.

La guida completa è in [AzerothUnspoken/FORMATO_PACCHETTI.md](AzerothUnspoken/FORMATO_PACCHETTI.md). Il formato cambierà con lo schema dati v2 (step S3 della roadmap): la guida verrà aggiornata di conseguenza. Per scrivere frasi buone, leggi anche [CONTRIBUTING.md](CONTRIBUTING.md).

## Stato del progetto

| Cosa | Stato |
|---|---|
| M0 Fondamenta: architettura, compatibilità, diagnostica (S1), narratore privato, Chat Gateway, impostazioni, procedura guidata (S2) | **fatto**, provato solo fuori dal gioco |
| G1 Prova in gioco ([checklist](docs/G1_checklist.md)) | **rimandata**: serve l'utente con il client vero |
| M1 Narrative Alpha: schema dati v2, Narrative Director, personalità, memoria e diario, relazioni (S1–S6b fatti), interlocutore e luogo, 300 intenzioni | in corso / da fare |
| M2: NPC Alive (S8) | fatto, non provato in gioco (G3) |
| M3: storie personali, Story Arcs (S9) | fatto, non provato in gioco |
| M4–M5: social, release 1.0 | da fare |

Il piano dettagliato, gli step e le note per chi sviluppa sono in [ROADMAP.md](ROADMAP.md). Le modifiche rilevanti per versione sono in [CHANGELOG.md](CHANGELOG.md). I problemi noti e le idee sono nelle [issue](https://github.com/Finland6738/azeroth-unspoken/issues).

## Sviluppo e test

Il repository ha questa struttura:

| Percorso | Contenuto |
|---|---|
| `AzerothUnspoken/` | l'addon (`Core/`, `Engine/`, `Systems/`, `Integration/`, `UI/`, `Data/`) |
| `AzerothUnspoken_Example/` | pacchetto di frasi di esempio |
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

**Dump delle API di Forever.** Per sapere se una funzione o un evento esistono nel client si consulta il dump di [Atraeau/WoW-Addons](https://github.com/Atraeau/WoW-Addons), clonato accanto al progetto (`E:\repository\WoW-Addons`) e **mai copiato** nel nostro repository. Vedi [docs/RIFERIMENTI.md](docs/RIFERIMENTI.md) e l'[ADR 0010](docs/adr/0010-dump-api-di-forever-come-riferimento.md).

Per contribuire (frasi, pacchetti, codice, issue) leggi [CONTRIBUTING.md](CONTRIBUTING.md).

## Documentazione

L'indice completo è in [docs/README.md](docs/README.md). I punti di partenza:

- [docs/ARCHITETTURA.md](docs/ARCHITETTURA.md): moduli, flusso di un evento, dati, punti di estensione.
- [docs/adr/README.md](docs/adr/README.md): le decisioni di progetto, una per file.
- [docs/Immersion_Director_GDD_v1.0.md](docs/Immersion_Director_GDD_v1.0.md): la specifica di prodotto (nel GDD il prodotto si chiama ancora "Immersion Director").
- [AzerothUnspoken/FORMATO_PACCHETTI.md](AzerothUnspoken/FORMATO_PACCHETTI.md): come scrivere un pacchetto.

## Licenza

**Licenza da definire.** Finché non è scelta, vale il diritto d'autore predefinito: tutti i diritti sono riservati. Le opzioni (codice e testi) sono discusse nell'[issue #2](https://github.com/Finland6738/azeroth-unspoken/issues/2).

## Crediti

- Ideazione e sviluppo: Daniel Polo.
- Riferimenti tecnici consultati (non copiati): [Atraeau/WoW-Addons](https://github.com/Atraeau/WoW-Addons) per il dump delle API di Forever; [Warcraft Wiki](https://warcraft.wiki.gg/wiki/World_of_Warcraft_API) per la documentazione generale delle API. Elenco completo in [docs/RIFERIMENTI.md](docs/RIFERIMENTI.md).
- [Total RP 3](https://totalrp3.info/) è un addon dei suoi autori; Azeroth Unspoken lo usa solo come integrazione facoltativa.
- Se in futuro si useranno dati di [ForeverDB.net](https://foreverdb.net/) per preparare i registri locali, verrà citato qui con un link visibile.

*World of Warcraft® è un marchio di Blizzard Entertainment, Inc. Azeroth Unspoken è un progetto di fan, indipendente e non affiliato né approvato da Blizzard. Le frasi sono originali e non riproducono testi del gioco.*
