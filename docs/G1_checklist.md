# G1: prova in gioco di Azeroth Unspoken

**A cosa serve.** Finora l'addon è stato provato solo fuori dal gioco, con un client finto. Questa prova serve a scoprire che cosa il client vero fa davvero: se carica l'addon, quali eventi arrivano, se il riquadro del narratore si vede bene, se i dati si salvano e, soprattutto, se la chat si comporta come ci aspettiamo. Corrisponde agli spike **SP-01…SP-05** del GDD (§13.1).

**Quanto tempo.** Circa 40 minuti. Si può fare a pezzi: ogni parte (SP-01, SP-02…) sta in piedi da sola.

**Non serve nessuna competenza tecnica.** Basta seguire i passi nell'ordine, guardare cosa succede e annotare. Se un passo non riesce, scrivi cosa hai visto e passa al successivo.

**Una promessa dell'addon da verificare.** Con le impostazioni predefinite l'addon **non scrive mai in chat**: le frasi compaiono solo in un riquadro che vedi solo tu. Scrivere in chat (dire qualcosa a nome del tuo personaggio) succede solo con un tuo gesto: un clic, un tasto, un comando. I passi della parte SP-05 mettono alla prova proprio questo. Alcuni passi **fanno scrivere davvero il tuo personaggio in `/say`**: falli in un posto isolato, dove nessuno legge.

---

## Come riportare i risultati

Alla fine ti chiedo di mandarmi:

1. gli **screenshot** (tasto Stamp, o lo strumento di cattura di Windows) o il testo copiato di ciò che stampa `/au debug full` (vedi SP-01);
2. **ogni messaggio d'errore** che compare (le finestre con scritte rosse o "Azeroth Unspoken ha generato un errore"): uno screenshot va bene;
3. il **modulo riassuntivo** in fondo a questo file, con una riga per ogni passo (`OK`, `NO`, oppure una nota).

Il testo di `/au debug`, `/au debug full` e della traccia (`/au debug trace`) si può condividere: l'addon non vi scrive i nomi di altri giocatori (chi ti ha sussurrato, sfidato, invitato o fatto uno scambio, il bersaglio di un incantesimo): al loro posto compare `<hidden>`. Se ne trovi uno, **è un errore da segnalare** (issue #53). Gli screenshot della chat o della finestra delle relazioni, invece, mostrano i nomi: coprili, se non vuoi condividerli.

Per vedere gli errori del gioco, prima di cominciare scrivi nella chat (premi Invio, scrivi, premi Invio):

```
/console scriptErrors 1
```

Per i comandi dell'addon vale sempre lo stesso gesto: premi **Invio**, scrivi il comando, premi **Invio**.

**Lingua e comandi.** Da questa versione l'addon parte **in inglese** (interfaccia e frasi), e i **nomi dei comandi sono sempre inglesi**, anche con l'interfaccia in italiano: `/au journal`, non `/au diario`. Se scrivi una parola italiana, l'addon risponde con il comando inglese da usare. Questa lista descrive i testi in italiano: al primo passo della procedura guidata scegli **Italiano** (oppure scrivi `/au language it`). Se hai già usato l'addon in italiano, la scelta resta.

---

## Prima di entrare in gioco

1. Chiudi il gioco se è aperto.
2. Avvia WoW Forever e arriva alla **schermata di selezione del personaggio**.
3. In basso a sinistra apri **AddOn** (o "Addons"). Nella lista cerca **Azeroth Unspoken** e controlla che la casella sia **spuntata**. Controlla anche **Azeroth Unspoken - Example pack** (facoltativo).
   - **Cosa aspettarti:** l'addon è in lista e non è segnato come "fuori data" o "incompatibile".
   - **Cosa riportare:** se l'addon manca o è segnato come incompatibile, fai uno screenshot della lista.
4. Se hai già un personaggio di prova (meglio un livello basso, in un posto tranquillo) scegli quello. Entra in gioco.

---

## SP-01: l'addon si carica, senza errori

1. Appena entri in gioco guarda lo schermo per **5 secondi**.
   - **Cosa aspettarti:** dopo 3 secondi circa compare la **procedura guidata** "Azeroth Unspoken - passo 1 di 6" (se hai Total RP 3 sono 7 passi). Non devono comparire finestre d'errore rosse.
   - **Cosa riportare:** se non compare la procedura guidata; se compare una finestra con un errore (screenshot).
2. Nella procedura guidata prova i pulsanti: **la procedura parte in inglese** (è la lingua predefinita): scegli **Italiano** al primo passo (la lista di prova è scritta per l'italiano), vai **Avanti** per tutti i passi. All'ultimo passo premi **Fine**. (Se preferisci puoi premere **Salta** in un passo qualsiasi: la prova vale lo stesso.)
   - **Cosa aspettarti:** a ogni passo cambia il testo del passo e il pulsante scelto è evidenziato con `» … «`. Alla fine compare in chat una riga che dice che il narratore è privato.
   - **Cosa riportare:** pulsanti che non rispondono, testi tagliati o sovrapposti (screenshot).
3. Scrivi `/au debug`.
   - **Cosa aspettarti:** alcune righe in chat. La prima è come `== Azeroth Unspoken 0.1.0: diagnostica ==`, la seconda comincia con `Client 1.60.1 (build 70658 ...), Interface 16001`. Poi la riga `Chat Gateway: mode PRIVATE ...`, poi una riga `Capacità: N AVAILABLE, N RESTRICTED, N MISSING`, poi l'elenco, infine `Nessun errore intercettato.`
   - **Cosa riportare:** **tutte le righe** (screenshot o testo). Se la build o l'Interface sono diversi da quelli sopra, segnalalo.
4. Scrivi `/au debug full`.
   - **Cosa aspettarti:** una riga per ogni capacità, con `AVAILABLE`, `RESTRICTED` o `MISSING` e un dettaglio.
   - **Cosa riportare:** tutte le righe con **MISSING** o **RESTRICTED** (screenshot dell'elenco completo, scorrendo la chat). Questo è l'elenco più utile della prova.
5. Scrivi `/au help`.
   - **Cosa aspettarti:** l'elenco dei comandi.
   - **Cosa riportare:** se compare un messaggio strano o un altro addon risponde al posto nostro.

---

## SP-02: gli eventi arrivano

L'addon deve accorgersi di zona, bersaglio, combattimento, morte e livello. Per vederlo si attiva una traccia che stampa ogni evento riconosciuto.

1. Scrivi `/au debug trace`.
   - **Cosa aspettarti:** un messaggio che dice che la traccia degli eventi è attiva.
2. **Cambia zona**: cammina fino a un confine di zona (o usa un tragitto che ne attraversa una nuova). In alternativa entra in una città o esci da una.
   - **Cosa aspettarti:** una riga blu in chat, come `ZONE_ENTER ...`.
   - **Cosa riportare:** se non compare nulla, o compare più di una riga ripetuta.
3. **Seleziona un bersaglio**: clicca su un NPC o su un animale (senza attaccare). Poi togli il bersaglio (tasto `Esc`).
   - **Cosa aspettarti:** righe `TARGET_CHANGED`.
4. **Combatti**: attacca un animale o un mostro facile, uccidilo.
   - **Cosa aspettarti:** `COMBAT_START` all'inizio e `COMBAT_END` alla fine; se lanci un incantesimo o un'abilità, righe `SPELL_SENT` e `SPELL_CAST`.
   - **Cosa riportare:** se manca l'inizio o la fine; se le righe compaiono solo a metà.
5. (Facoltativo) Se sei vicino a salire di livello, o se puoi morire senza problemi: lascia che succeda.
   - **Cosa aspettarti:** `LEVEL_UP`; oppure `PLAYER_DEATH` e `PLAYER_REVIVE`.
6. Scrivi `/au debug trace` di nuovo per spegnere la traccia. Poi `/au debug`.
   - **Cosa aspettarti:** nella riga `Eventi:` i conteggi di eventi pubblicati e di doppioni scartati; sotto, l'elenco degli ultimi eventi.
   - **Cosa riportare:** lo screenshot di questa schermata, e quali eventi dell'elenco sopra **non** hai visto comparire.

---

## SP-03: il narratore si vede bene

1. Scrivi `/au narrator` (mostra una frase di prova).
   - **Cosa aspettarti:** in basso, al centro dello schermo, un **riquadro scuro** con in alto a sinistra una scritta colorata ("Narratore", "Personaggio", "Voce interiore" o "NPC") e sotto una frase. Dopo qualche secondo svanisce da solo. **Non** deve comparire nulla nella chat.
   - **Cosa riportare:** dove si trova, se è leggibile, se si sovrappone ad altri elementi (screenshot).
2. Ripeti `/au narrator` e prova l'intestazione del riquadro (la striscia in alto): **trascinala con il mouse** per spostare il riquadro. Rilascia. Rifai `/au narrator`.
   - **Cosa aspettarti:** il riquadro compare nella nuova posizione.
   - **Cosa riportare:** se non si sposta, o se si sposta ma torna al centro.
3. Mentre il riquadro è visibile **clicca nel mondo di gioco proprio sotto il testo** (non sull'intestazione): per esempio su un NPC, o per muovere il personaggio.
   - **Cosa aspettarti:** il clic arriva al gioco: il riquadro **non blocca** i clic sul testo.
   - **Cosa riportare:** se il clic viene "mangiato" dal riquadro.
4. Scrivi `/au options` per aprire il pannello. Cerca la colonna "Riquadro del narratore". Prova i pulsanti `+` e `-` per **Durata del testo**, **Opacità** e **Dimensione del testo**; premi **Prova il narratore** dopo ogni cambio.
   - **Cosa aspettarti:** il riquadro dura di più o di meno, è più o meno trasparente, il testo è più grande o più piccolo.
   - **Cosa riportare:** se il pannello non si apre, o se qualcosa è tagliato fuori; se un pulsante non fa nulla.
5. Premi `H` nell'intestazione del riquadro (o scrivi `/au narrator history`).
   - **Cosa aspettarti:** una finestra sopra il riquadro con le frasi recenti. Si scorre con la rotella.
6. **Pausa immediata**: premi il pulsante `||` nell'intestazione del riquadro, o scrivi `/au pause`.
   - **Cosa aspettarti:** il riquadro si chiude, in chat compare "narratore in pausa". Se ora cammini e combatti non compaiono frasi. Ripremi `||` (ora è `>`) per riprendere.
   - **Cosa riportare:** se in pausa compaiono comunque frasi.
7. **Con e senza Total RP 3** (solo se lo hai installato): ripeti il passo 1 una volta con Total RP 3 attivo e una volta con Total RP 3 disattivato (dalla lista AddOn nella schermata di selezione del personaggio, poi rientra).
   - **Cosa aspettarti:** funziona in entrambi i casi. Con Total RP 3 e un profilo con nome, le frasi narrative usano il nome del profilo.
   - **Cosa riportare:** qualunque differenza di comportamento o errore.

---

## SP-04: i dati si salvano

1. Scrivi questi tre comandi, uno alla volta:
   - `/au intensity 70`
   - `/au depth elevated`
   - `/au mode confirm`
   - e sposta il riquadro del narratore in un punto diverso (passo SP-03.2).
2. Scrivi `/reload` (ricarica l'interfaccia).
3. Dopo il ricaricamento scrivi `/au intensity` e `/au mode`.
   - **Cosa aspettarti:** "intensità: 70" e "chat: conferma per inviare". Il riquadro (`/au narrator`) compare dove lo avevi messo. La procedura guidata **non** ricompare.
   - **Cosa riportare:** valori tornati ai predefiniti (50 e "solo narratore privato").
4. **Esci davvero dal gioco** (menu, "Esci dal gioco", non basta tornare alla selezione del personaggio) e riaprilo. Entra con lo stesso personaggio. Ripeti `/au intensity` e `/au mode`.
   - **Cosa aspettarti:** gli stessi valori.
5. Cerca sul PC il file `AzerothUnspokenDB.lua`, di solito dentro `<WoW>\_forever_\WTF\Account\<NOME ACCOUNT>\SavedVariables\`. Un secondo file, `AzerothUnspokenCharacterDB.lua`, sta dentro la cartella del personaggio, sotto `...\WTF\Account\<NOME ACCOUNT>\<Reame>\<Personaggio>\SavedVariables\`.
   - **Cosa riportare:** se i due file esistono e dove sono. Non serve inviarli.
6. Rimetti le impostazioni a posto: `/au intensity 50`, `/au depth literary`, `/au mode private`.

---

## SP-05: la chat (la parte più importante)

Qui si verifica che l'addon non scriva mai da solo in chat con le impostazioni predefinite, e che con un tuo gesto la frase parta davvero. **Fai questa parte in un posto isolato.** Alcuni passi fanno dire una frase vera al tuo personaggio.

### A. Con le impostazioni predefinite

1. Scrivi `/au mode private`. Poi scrivi, uno dopo l'altro, `/au greet`, `/au muse`, `/au battlecry`. Poi premi il pulsante rotondo "libro" sullo schermo (il pulsante "pronuncia"), anche più volte.
   - **Cosa aspettarti:** le frasi compaiono **solo nel riquadro del narratore**. Il tuo personaggio **non** dice nulla (nessun fumetto sopra la testa, nessuna riga `[Nome] dice:` in chat).
   - **Cosa riportare:** se in chat compare **qualunque** cosa a nome del tuo personaggio. Questo è un errore grave.
2. Lascia il gioco in esplorazione per qualche minuto: cambia zona, combatti qualche mostro.
   - **Cosa aspettarti:** ogni tanto una frase nel riquadro. Mai niente in chat.

### B. Conferma per inviare

3. Scrivi `/au mode confirm`. Poi scrivi `/au greet`.
   - **Cosa aspettarti:** la scritta in alto nel riquadro dice **"proposta"** con i secondi che restano. Sotto la frase compare una barra: a sinistra il canale (**/s** o **/e**) in un riquadrino colorato, a destra **Scarta**, **Un'altra**, **Modifica**, **Nella chat** e **Invia** (l'unico dorato). Il pulsante "libro" sullo schermo si illumina. In chat non succede nulla.
   - **Cosa riportare:** se i pulsanti mancano o sono sovrapposti.
4. **Lascia passare 30 secondi** senza toccare nulla.
   - **Cosa aspettarti:** la proposta scade e il riquadro si chiude da solo. Il pulsante "libro" si spegne.
5. Fai comparire una nuova proposta (`/au greet`) e premi **Invia** nel riquadro (oppure il pulsante "libro").
   - **Cosa aspettarti:** la frase compare **in chat** come detta dal tuo personaggio (`/s`) o come emote (`/e`), con il fumetto sopra la testa se è `/s`. Il riquadro mostra "inviato in /s".
   - **Cosa riportare (importante):** se **non** compare nulla in chat, oppure compare una finestra "Azeroth Unspoken ha tentato un'azione che è stata bloccata" (ADDON_ACTION_FORBIDDEN). Scrivi anche `/au debug`: la riga `Chat Gateway` indica `last refusal` e, dalla correzione Q5 (#55), `blocked by the client N`: se il client blocca l'invio **senza errori Lua**, l'addon se ne accorge (`last refusal blocked`, la proposta resta in attesa, nulla è contato come inviato). Fai screenshot.
6. Fai comparire un'altra proposta e premi **Scarta**.
   - **Cosa aspettarti:** il riquadro si chiude, nulla in chat.
7. Fai comparire una proposta e prova **Modifica**: nella casella che compare cambia il testo e premi **Invio**.
   - **Cosa aspettarti:** in chat compare il **testo che hai scritto tu**.
8. Fai comparire una proposta e premi più volte il pulsante **/s** nel riquadro.
   - **Cosa aspettarti:** il canale cambia (`/s`, `/e`, e `/p`, `/g`… solo se sei in un gruppo o in una gilda). Premi **Invia**: la frase va nel canale scelto.
   - **Cosa riportare:** se un canale non funziona (indica quale).
9. **Anti-flood**: fai due proposte di seguito e prova a inviarle a distanza di un secondo.
   - **Cosa aspettarti:** la seconda non parte e compare "troppo ravvicinato: aspetta qualche secondo". Dopo qualche secondo riprovando parte.

### C. Il tasto

10. Apri **Opzioni di gioco > Comandi (o "Scorciatoie") > AddOn > Azeroth Unspoken**. Assegna un tasto a **"Conferma e pronuncia la frase proposta"** e uno a **"Pausa immediata del narratore"**.
    - **Cosa riportare:** se la sezione Azeroth Unspoken manca, o i nomi sono sbagliati.
11. Con una proposta in attesa premi il tasto "conferma".
    - **Cosa aspettarti:** la frase parte, come con il pulsante.
    - **Cosa riportare:** se il tasto non fa nulla ma il pulsante funziona (o viceversa).
12. Premi il tasto di pausa.
    - **Cosa aspettarti:** "narratore in pausa"; premilo di nuovo e riprende.

### D. Anteprima

13. Scrivi `/au mode preview` e fai comparire una proposta. Premi il tasto "conferma" (o il pulsante "libro").
    - **Cosa aspettarti:** **non** invia: apre la casella di modifica con il testo. Premendo **Invio** nella casella, la frase parte.
    - **Cosa riportare:** se invia subito.

### E. Automatico, dove permesso (facoltativo, ma utile)

L'invio automatico non si accende con un clic solo (issue #8): serve un avviso intero in una finestra di conferma e una conferma dopo almeno 2 secondi ed entro 30 (issue #178).

Questa modalità fa scrivere l'addon da solo **solo emote** e, nelle istanze, `/say`. Provala solo se vuoi: è proprio per scoprire cosa permette il client.

14. Scrivi `/au mode auto`: compare un **avviso** e la modalità **non** cambia. Scrivi di nuovo `/au mode auto` subito: non cambia nulla. Scrivilo ancora dopo qualche secondo (entro 30): ora è attiva. Poi `/au chance zone 100` e `/au cooldown 0`. Cammina fino a un'altra zona.
    - **Cosa aspettarti:** una **emote** compare in chat da sola (`Nome sospira…`), oppure una proposta per `/s` che resta in attesa. Non deve comparire nessun `/say` da solo nel mondo aperto.
    - **Cosa riportare:** se compare un `/say` da solo (errore grave); se l'emote non parte e `/au debug` mostra `last refusal blocked` (o `error`): vuol dire che il client blocca anche le emote automatiche. Scrivi se `blocked by the client` aumenta.
15. (Solo se entri in un'istanza) Rifai il passo 14 dentro l'istanza.
    - **Cosa aspettarti:** può partire un `/say` da solo, poche volte al minuto.
16. **Rimetti tutto a posto:** `/au mode private`, `/au chance zone 40`, `/au cooldown 45`.

---

## Q2: correzioni da verificare in gioco (aggiunto dalla correzione Q2)

Corrette fuori dal gioco le issue #3, #4, #5, #6, #8, #11, #12, #14, #17 e #19. Restano da provare nel client vero:

20. **Nella chat (issue #14, la prova più utile).** Scrivi `/au mode confirm` e `/au greet`. Sotto la frase, accanto a **Invia**, compare **Nella chat**. Premilo.
    - **Cosa aspettarti:** si apre la casella della chat già su `/s` (o `/e`) con la frase dentro, **senza che l'addon invii nulla**. Premi tu Invio: la frase parte come se l'avessi scritta a mano. Il riquadro si chiude (la proposta è scartata dopo la copia).
    - **Cosa riportare:** se il pulsante non c'è (vuol dire che `ChatFrame_OpenChat` manca: guarda `/au debug full`, riga `api:OpenChat`); se la casella si apre ma è vuota o sul canale sbagliato; se `/s` da lì funziona anche quando "Invia" non funzionava (passo 5): è il confronto che decide se il Chat Gateway deve privilegiare questa strada. Prova anche `/au copy`.
21. **Testo per canale (issue #5).** Scrivi `/au channel say`, poi `/au mode confirm` e fai comparire una proposta **narrativa** (azioni come "lancia la lenza…": prova `/au event zone` o `/au battlecry` più volte). Premi **Invia**.
    - **Cosa aspettarti:** in `/s` esce **con il tuo nome davanti** ("Nome lancia la lenza…"), non senza soggetto. Poi `/au channel emote` e una frase **parlata**: esce come "Nome dice: «…»", non come "Nome Frase". Il riquadro mostra già il testo che partirà e si aggiorna se cambi canale con il pulsante.
    - **Cosa riportare:** testi senza soggetto o senza virgolette. Rimetti `/au channel auto`.
22. **L'editor non scade (issue #4).** Con `/au mode preview` fai comparire una proposta, premi il tasto "pronuncia" (si apre l'editor) e **aspetta 40 secondi** scrivendo qualcosa a metà.
    - **Cosa aspettarti:** l'editor resta aperto e il testo non si perde; Invio lo spedisce. Se chiudi l'editor con Esc la proposta resta ancora circa 25 secondi.
    - **Cosa riportare:** se l'editor si chiude da solo.
23. **Invio automatico: due gesti (issue #8).** Apri `/au options`: la riga **Modalità chat** scorre solo privato, anteprima e conferma. La riga **Invio automatico** al primo clic mostra l'avviso intero in una finestra di conferma e il testo "spento, leggi prima"; un secondo clic subito dopo non fa nulla; dopo qualche secondo la riga dice "spento, conferma" e il secondo clic (o **Attiva** nella finestra) la accende. Nella guida del primo avvio (`/au wizard`, passo della chat) la carta "automatica" funziona allo stesso modo.
    - **Cosa riportare:** se un solo clic basta, o se il testo del pulsante non cambia.
24. **Il mouse sopra il riquadro (issue #17).** Fai comparire una frase (`/au narrator`) e tieni il mouse **sopra il testo** mentre la linea sottile in basso si accorcia.
    - **Cosa aspettarti:** il riquadro resta visibile e la linea si ferma finché il mouse è sopra. Quando lo sposti, poco dopo il riquadro sparisce.
    - **Cosa riportare:** se svanisce comunque (vuol dire che `IsMouseOver` non esiste neppure come metodo del frame).
25. **Bersaglio dall'identità segreta (issue #6, SP-02).** In un luogo dove il client nasconde l'identità dei bersagli (combattimento in un incontro o in un'istanza con restrizioni, se esiste) seleziona un bersaglio e scrivi `/au debug full`.
    - **Cosa aspettarti:** la riga `value:target.identity` è `RESTRICTED`; nessun errore rosso; le frasi di battaglia escono lo stesso, senza il nome del bersaglio.
    - **Cosa riportare:** errori rossi con un bersaglio segreto; la riga `value:target.identity`.
26. **Capacità nuova.** Con `/au debug full` controlla la riga `api:OpenChat` (`ChatFrame_OpenChat`): `AVAILABLE` o `MISSING`.

## S3: i testi e il validatore (aggiunto dallo step S3)

Poca roba, ma solo il client vero può dire che i file dei testi (UTF-8) e il comando si comportano come fuori dal gioco.

17. Scrivi `/au validate`.
    - **Cosa aspettarti:** `Validatore: N frasi in N pacchetti, N varianti: 0 errori, 0 avvisi.` (i totali cambiano a ogni versione: conta solo che errori e avvisi siano 0) e `Nessun problema trovato.`
    - **Cosa riportare:** il numero di errori e avvisi, e le righe che compaiono se non sono zero. Con il pacchetto di esempio spento (`/au pack example off`) il totale delle frasi scende.
18. Scrivi `/au language it`, poi `/au stats` e `/au test zone`, quindi `/au language en` e di nuovo `/au stats` e `/au test zone`. Poi rimetti `/au language it`.
    - **Cosa aspettarti:** `N frasi disponibili in Italiano` (e l'equivalente inglese con `en`); le frasi di prova con **le lettere accentate giuste** (à è ì ò ù, «virgolette») in italiano e in inglese.
    - **Cosa riportare:** lettere sbagliate (per esempio `Ã¨` al posto di `è`): vuol dire che un file dei testi non è letto come UTF-8.
19. Con `/au depth natural`, poi `/au depth elevated`, scrivi qualche volta `/au test battle`.
    - **Cosa aspettarti:** con *naturale* escono più battute dirette, con *elevato* più frasi ornate. La differenza è di probabilità, non una regola netta.
    - **Cosa riportare:** se non noti nessuna differenza dopo una ventina di prove (è un'informazione utile, non un errore).

## S4: il Narrative Director (aggiunto dallo step S4)

Il Director decide quando il narratore parla da solo. Fuori dal gioco è provato con il client simulato; qui serve sapere se il ritmo è piacevole e se le sospensioni scattano davvero.

27. Con le impostazioni predefinite (intensità 50) gioca **20–30 minuti** nel mondo aperto: combattimenti, un cambio di zona, magari un livello.
    - **Cosa aspettarti:** frasi rade, mai due di fila nello stesso istante; dopo una frase almeno 45 secondi di silenzio (tranne morte, ritorno in vita e livello).
    - **Cosa riportare:** se il narratore ti è sembrato invadente o troppo muto; ogni volta che sono comparse **due frasi insieme**.
28. Scrivi `/au debug` dopo qualche combattimento e cerca la riga **Narrative Director**.
    - **Cosa aspettarti:** `budget combat 2/6, ...` (frasi usate e ammesse negli ultimi 10 minuti) e `last battle=spoken, victory=cooldown:global, ...` (le ultime decisioni).
    - **Cosa riportare:** la riga intera.
29. Prova l'intensità: `/au intensity 0` e combatti un po' (nessuna frase spontanea, ma `/au greet` funziona); poi `/au intensity 100` (frasi più frequenti, mai a raffica).
    - **Cosa riportare:** se a 0 compare qualcosa da solo, o se a 100 il ritmo è insopportabile.
30. **Filmati.** Se puoi, guarda una cinematica (per esempio quella iniziale di una razza con un personaggio nuovo, o un filmato di un'area) durante un evento che di solito fa parlare il narratore.
    - **Cosa aspettarti:** nessuna frase durante il filmato.
    - **Cosa riportare:** con `/au debug full`, le righe `api:InCinematic` e `api:IsInCinematicScene` (`AVAILABLE` o `MISSING`).
31. **Combattimenti impegnativi.** In un dungeon, contro un élite o un boss (o in incursione), ascolta il narratore.
    - **Cosa aspettarti:** durante lo scontro nessuna frase di battaglia o di atmosfera (in `/au debug`: `battle=busy`); morte e ritorno in vita parlano ancora.
    - **Cosa riportare:** frasi comparse durante uno scontro impegnativo, e se un boss è stato riconosciuto come tale.

32. **Il profilo del personaggio.** Scrivi `/au soul` (o apri le impostazioni e premi "Anima del personaggio...").
    - **Cosa aspettarti:** si apre una finestra con l'archetipo, sette righe di tratti (ognuna con il suo pulsante e la fonte: scelta, Total RP 3 o neutro), gli otto argomenti da evitare e, in basso, "Profilo neutro" e "Chiudi". Il pulsante di Total RP 3 compare solo se l'addon c'è. Si può spostare trascinandola.
    - **Cosa riportare:** se i testi stanno nei pulsanti (niente parole tagliate), se la finestra sta nello schermo, se i pulsanti `+`, `-` e `x` rispondono, se `/au soul` la chiude di nuovo.
33. **Il carattere cambia le frasi.** Scegli l'archetipo "Veterano disilluso", poi (sempre con il pulsante) "Viaggiatore ottimista". Dopo ogni scelta scrivi `/au muse` e `/au battlecry` alcune volte, ed entra in una capitale.
    - **Cosa aspettarti:** il cambio vale subito, senza `/reload`. Con il veterano in una capitale puoi sentire «Ogni strada conduce a casa...», con il viaggiatore «Le sue porte sono ancora aperte...». Frasi di tono ironico per l'ironia alta, più sobrie per quella bassa. Con le sole 16 frasi di esempio la differenza è piccola: contano il ripetersi e l'assenza di contraddizioni.
    - **Cosa riportare:** se una frase ti è sembrata in contrasto con il carattere scelto, e quale.
34. **Argomenti da evitare.** Accendi "famiglia" e "sangue" (o `/au soul avoid famiglia`, `/au soul avoid sangue`). Scrivi `/au muse` una ventina di volte e fai scendere la salute del personaggio.
    - **Cosa aspettarti:** mai «Chissà se a casa qualcuno accende ancora una candela per me» né «Il sangue mi scorre tra le dita...».
    - **Cosa riportare:** se compare una frase che tocca un argomento spento. È il caso più grave: riportala per intero.
35. **Voce interiore spenta.** `/au soul voice spenta` e poi `/au muse` e `/au event muse` alcune volte (poi `/au soul voice -` per toglierla).
    - **Cosa aspettarti:** nessuna frase con l'etichetta "Voce interiore" nel narratore; compaiono quelle del personaggio o del narratore, oppure niente.
    - **Cosa riportare:** frasi con l'etichetta "Voce interiore" comparse a voce spenta.
36. **Profilo neutro.** `/au soul neutral`, poi `/au soul list`.
    - **Cosa aspettarti:** tutti i tratti "non impostato (neutro)", e il narratore si comporta come prima. Nessuna preghiera del devoto, nessun «tutto mi è stato tolto»: sono le frasi che affermano un credo o un passato e il profilo neutro non le sente.
37. **Total RP 3** (solo se è installato; altrimenti scrivilo e passa oltre). Nel tuo profilo TRP3 imposta qualche tratto psicologico, per esempio "Gentile/Brutale" tutto a sinistra e "Superstizioso/Razionale" tutto a destra. Poi `/au soul trp3 on` e `/au soul list`.
    - **Cosa aspettarti:** Temperamento "Misericordioso (Total RP 3)" e Fede "Scettico (Total RP 3)"; con `/au soul trp3 off` tornano "neutro". Una scelta fatta a mano ha sempre la precedenza. Senza il consenso l'addon non legge i tratti.
    - **Cosa riportare:** le righe `integration:totalRP3` e `integration:totalRP3:traits` di `/au debug full`, e se i tratti letti corrispondono a quelli impostati (gli ID dei tratti di TRP3 non sono stati provati con un profilo vero). Se compare un errore rosso con TRP3 installato, uno screenshot.
38. **Il profilo resta.** Scegli un archetipo e un argomento da evitare, fai `/reload`, poi esci e rientra.
    - **Cosa aspettarti:** `/au soul list` mostra le stesse scelte dopo entrambi.
    - **Cosa riportare:** se qualcosa è tornato neutro.

39. **Prima visita e diario.** Con un personaggio mai stato in una zona (o dopo `/au journal forget <zona>`), entra in una zona nuova, meglio una foresta (Elwynn Forest, Teldrassil...). Poi `/au journal`.
    - **Cosa aspettarti:** dopo qualche secondo una frase di prima volta (es. «Mai prima d'ora i miei passi hanno toccato questo suolo...»); il diario ha un ricordo «Prima visita: <zona>», la zona nella scheda *Luoghi* con «1 visite» e nessun errore rosso. Il diario si apre, si sposta, mostra le quattro schede, i pulsanti `P` (permanente) e `x` (cancella) rispondono.
    - **Cosa riportare:** se la frase di prima volta è comparsa, se il nome della zona nel diario è quello giusto (client inglese: nomi inglesi), se il testo sta nei pulsanti e nelle righe, se il diario si può richiudere con `/au journal`.
40. **Ritorno.** Esci dalla zona, aspetta almeno 10 minuti (o un giorno, per avere il ricordo salvato) ed entra di nuovo. Il richiamo ha il 70% di probabilità (per l'intensità 50): se non compare al primo ritorno, riprova con un'altra zona; `/au chance memory_return 100` lo rende certo per la prova.
    - **Cosa aspettarti:** dopo qualche secondo una frase di richiamo (es. «Rieccomi. Questa foresta mi conosce già.») e **una sola frase**, non due insieme; in `/au debug` (riga Narrative Director) `memory_return=spoken` e `zone=outranked`. Il luogo ora dice «2 visite». Con un ritorno dopo un giorno compare anche un ricordo «Ritorno» nel diario; entro il giorno solo nella scheda *Sessione*.
    - **Cosa riportare:** se la frase di richiamo è comparsa, se è arrivata insieme a un'altra, e dopo quanto tempo dal cambio di zona.
41. **Una visita finita male.** In una zona fatti uccidere (o lasciala in combattimento, o con poca salute). Esci, aspetta almeno 10 minuti e rientra.
    - **Cosa aspettarti:** il diario ha un ricordo «Morte: <zona>» (o «Fuga: <zona>»), la prima morte vale più delle altre (flag `first_death` nella scheda *Flag*); al ritorno può uscire una frase che lo cita («L'ultima volta che ho messo piede in <zona> sono caduto...»). Con `/au soul avoid morte` quella frase non esce mai.
    - **Cosa riportare:** se una frase cita una morte o una fuga che **non** c'è stata (è il caso più grave: riportala per intero), e se la fuga è stata riconosciuta quando era giusto (e non quando non lo era: per esempio al rilascio dello spirito).
42. **Livelli e capitali.** Sali di livello e, se puoi, entra per la prima volta in una capitale.
    - **Cosa aspettarti:** un ricordo «Livello raggiunto N» (ogni 10 livelli anche il flag `level_N`); la capitale come prima visita più importante e il flag `first_capital`.
    - **Cosa riportare:** se compaiono ricordi che non dovrebbero (ingressi ripetuti nella stessa zona, uno per ogni clic): non deve succedere.
43. **Persistenza.** Con qualche ricordo, `/reload`; poi esci dal gioco e rientra.
    - **Cosa aspettarti:** `/au journal list` mostra gli stessi ricordi, luoghi e flag dopo entrambi; un `/reload` nella stessa zona **non** conta una visita nuova.
    - **Cosa riportare:** ricordi o luoghi scomparsi dopo `/reload` o dopo l'uscita, o visite contate due volte. Dopo un arresto anomalo del client i ricordi dell'ultima sessione possono mancare (le SavedVariables si scrivono solo a `/reload` o alla chiusura): non è un errore dell'addon, ma segnalalo.
44. **Cancellare, rendere permanente, esportare.** Nel diario cancella un ricordo, segna `P` un altro, poi premi *Esporta* (o `/au journal export`).
    - **Cosa aspettarti:** il ricordo cancellato sparisce; quello permanente porta `[P]`; la finestra di esportazione mostra il testo **già selezionato** e Ctrl+C lo copia (incollalo in un blocco note); Esc la chiude. *Dimentica tutto* chiede un secondo clic entro 6 secondi.
    - **Cosa riportare:** se la finestra di esportazione si apre e scorre (o solo un pezzo del testo è visibile), se Ctrl+C copia, se un testo scritto lì dentro si cancella da solo (deve rimanere com'era).
45. **Niente di troppo.** Gioca dieci minuti normalmente (combattimenti, incantesimi, bersagli diversi, qualche cambio di zona).
    - **Cosa aspettarti:** nessun ricordo nuovo oltre a prime visite, ritorni lunghi, morti, fughe e livelli; il narratore non si fa più loquace per via dei richiami (al massimo uno per ritorno).
    - **Cosa riportare:** quanti ricordi nuovi sono comparsi nel diario e di che tipo; se un richiamo ti è sembrato troppo frequente.

---

## S6b: le relazioni (aggiunto dallo step S6b)

46. **La finestra.** Scrivi `/au relationships` (o apri le impostazioni e premi "Relazioni...").
    - **Cosa aspettarti:** una finestra con la tabella (nome, tipo, etichetta, disposizione, ultima), i filtri e la ricerca; le intestazioni ordinano; due schede ("Relazioni", "Persone incontrate"); in basso le quattro opzioni (NPC automatici e proposte accesi; "registra da solo" e "asse attrazione" spenti).
    - **Cosa riportare:** se si apre senza errori rossi, se il testo è tagliato o sovrapposto, se le righe si cliccano.
47. **NPC automatici.** Parla con alcuni NPC (gossip, una quest da accettare e consegnare, un mercante: compra, vendi, ripara; un maestro di volo; un addestratore; un locandiere). Poi `/au relationships`.
    - **Cosa aspettarti:** una riga per NPC con il nome; la familiarità cresce di poco a ogni dialogo (non più di ~6 al giorno per tipo); quest e mercanti alzano anche la fiducia.
    - **Cosa riportare:** se qualche fonte non registra nulla (dialogo, accettazione, consegna, acquisto, vendita, riparazione, volo, addestratore, locanda); se un NPC compare con il nome sbagliato o senza nome. `/au debug full`: righe `event:GOSSIP_SHOW`, `event:MERCHANT_SHOW`, `hook:BuyMerchantItem`, `hook:RepairAllItems`, `hook:C_Container.UseContainerItem`.
48. **Vendite.** Vendi un oggetto al mercante (clic destro sull'oggetto con il mercante aperto). Poi un oggetto non vendibile e l'uso di una pozione mentre il mercante è aperto.
    - **Cosa aspettarti:** la vendita alza un poco familiarità e fiducia; l'uso di una pozione col mercante aperto potrebbe contare come vendita (limite noto dell'euristica).
49. **Un NPC noto parla.** Con un NPC ormai conosciuto (familiarità 15 o più: `/au relationships set npc:<id> familiarita 40`, o dopo più giorni di dialoghi) riapri il dialogo.
    - **Cosa aspettarti:** una frase di "NPC conosciuto" (a volte, probabilità 45%; `/au chance relation_npc 100` per la prova), solo una volta per NPC ogni dieci minuti.
50. **Giocatori: solo con un clic.** Entra in gruppo con qualcuno, fai uno scambio con un giocatore, bersaglia un giocatore con Total RP 3 (se lo hai), rispondi a un whisper. Apri `/au relationships` e la scheda "Persone incontrate".
    - **Cosa aspettarti:** i nomi compaiono come proposte; **nessuno è nella tabella** finché non premi `+` o scrivi il nome. Nessun testo del whisper compare da nessuna parte.
    - **Cosa riportare:** se manca una fonte di proposte; se qualcuno è entrato da solo (**deve essere NO**); `/au debug full`: `value:` e `event:GROUP_ROSTER_UPDATE`, `TRADE_SHOW`, `CHAT_MSG_WHISPER_INFORM`.
51. **Cursori, note, etichetta.** Apri il dettaglio di una persona, trascina i cursori, premi `-` e `+`, scrivi una nota e dei tag (Invio), scegli un'etichetta con il pulsante e una scritta da te nella casella accanto.
    - **Cosa aspettarti:** i valori si salvano al rilascio; l'etichetta scelta prevale su quella calcolata; l'eliminazione chiede una seconda pressione.
    - **Cosa riportare:** se il trascinamento del cursore segue il mouse (`GetCursorPosition`); se il cursore scatta o sparisce; se le caselle di testo accettano lettere accentate.
52. **Il tono segue il rapporto.** Con un bersaglio sconosciuto scrivi più volte `/au greet`, `/au farewell` e `/au thanks`; poi con un amico (fiducia e affetto alti) e con un rivale (fiducia bassa, rispetto alto).
    - **Cosa aspettarti:** formale con lo sconosciuto, caldo con l'amico, teso e ironico con il rivale; in gruppo con un amico, qualche frase di battaglia o di vittoria "al fianco di qualcuno".
    - **Cosa riportare:** le frasi che stonano; se `{relation}` esce con un nome che non regge nella frase.
53. **Persistenza.** Con qualche NPC e un giocatore in lista, `/reload`; poi esci dal gioco e rientra.
    - **Cosa aspettarti:** tutto com'era; dopo molti giorni la familiarità degli NPC è calata di poco (mezzo punto al giorno oltre i 14), quella dei giocatori no.
54. **Esportazione.** `/au relationships export`, seleziona il testo e copialo con Ctrl+C.
    - **Cosa riportare:** se la finestra si apre e il testo si copia; che contenga solo ciò che hai scritto tu (note, tag), mai testi di chat.
55. **Asse attrazione.** Accendilo dalle opzioni della finestra, imposta affetto e attrazione alti a una persona.
    - **Cosa aspettarti:** compare il cursore dell'attrazione e l'etichetta "amato"; spento, l'asse sparisce e l'etichetta torna quella degli altri assi.

---

## S6c: interlocutore e luogo (aggiunto dallo step S6c)

56. **Dove sono.** In alcune zone (Durotar o Elwynn, una capitale amica, una zona dell'altra fazione, una zona contesa, Booty Bay) scrivi `/au place`.
    - **Cosa aspettarti:** zona e sottozona giuste, un numero di mappa, «riconosciuto per nome», il territorio (amico, ostile, conteso, santuario), i tag (foresta, deserto, porto...), «capitale amica/nemica» dove serve.
    - **Cosa riportare:** il **numero di mappa** di ogni zona provata (servono a verificare `Data/Places.lua`: chi ha numeri diversi da quelli del file va corretto) e se il territorio è giusto. `/au debug full`: `api:C_Map.GetMapInfo`, `api:C_PvP.GetZonePVPInfo`, `api:GetInstanceInfo`.
57. **Istanze.** Entra in un dungeon, poi (se puoi) in un campo di battaglia o un'arena, e scrivi `/au place` dentro.
    - **Cosa aspettarti:** «dungeon»/«campo di battaglia»/«arena» con il nome e l'id dell'istanza, la difficoltà; in gruppo con un ruolo assegnato, «difesa»/«cure»/«danno». In coda per un campo di battaglia: «campo di battaglia: queued».
    - **Cosa riportare:** l'id dell'istanza (verifica di `instances` in `Data/Places.lua`), se il tipo è giusto, se la coda si vede.
58. **Un boss.** In un dungeon affronta un boss.
    - **Cosa aspettarti:** durante lo scontro il narratore tace (anche se il boss non è «worldboss»); alla fine, qualche secondo dopo, a volte una frase di vittoria o di sconfitta con il nome del boss (`/au chance encounter_end 100` per la prova).
    - **Cosa riportare:** se `ENCOUNTER_START`/`ENCOUNTER_END` arrivano (`/au debug trace`), se il nome del boss esce giusto.
59. **Il ritmo cambia.** Gioca un po' nel mondo aperto, poi in un dungeon, in un'incursione e in un campo di battaglia, con l'intensità predefinita.
    - **Cosa aspettarti:** in incursione e durante i boss pochissime frasi; in campo di battaglia frasi brevi; in città o in locanda un po' più spazio.
    - **Cosa riportare:** se il ritmo ti sembra giusto (i numeri sono ipotesi).
60. **Chi ho davanti: NPC.** Parla con un mercante, un addestratore, un maestro di volo, un locandiere, un banchiere e chi dà una quest; poi, chiuso il dialogo, prendili come bersaglio e scrivi `/au who`.
    - **Cosa aspettarti:** il ruolo giusto per ciascuno; un NPC con cui hai solo chiacchierato (gossip) **non** ha ruolo; a volte, all'apertura, una frase sul ruolo (`npc_meet`, `/au chance npc_meet 100`).
    - **Cosa riportare:** ruoli sbagliati o mancanti; con un locandiere di `Data/NPCs.lua` (per esempio Innkeeper Farley a Goldshire) se `/au who` mostra temperamento e modo di parlare: se no, il suo **npcID** non corrisponde.
61. **Chi ho davanti: giocatori.** Prendi come bersaglio giocatori di razze e classi diverse e scrivi `/au who`, poi `/au greet`.
    - **Cosa aspettarti:** razza e classe nella tua lingua; saluti legati alla terra d'origine o al mestiere, mai giudizi; con un giocatore dell'altra fazione, il saluto «non capirai una parola».
    - **Cosa riportare:** frasi che stonano o suonano come stereotipi.
62. **Azioni verso di te.** Fatti sfidare a duello, invitare in gruppo, salutare con `/wave` (una volta rivolto a te con te come bersaglio, una volta senza bersaglio), proporre uno scambio; accetta una quest.
    - **Cosa aspettarti:** a volte una frase sull'azione (`/au chance other_action 100`); `/au who` mostra le azioni recenti. Un'emote non rivolta a te non conta. Nessun testo di emote compare nel diario o nei dati salvati.
    - **Cosa riportare:** quali azioni non si registrano (`/au debug full`: `event:DUEL_REQUESTED`, `PARTY_INVITE_REQUEST`, `CHAT_MSG_TEXT_EMOTE`, `BANKFRAME_OPENED`).
63. **Total RP 3 degli altri (facoltativo).** Con TRP3 installato e un giocatore con profilo: `/au who trp3 on`, poi bersaglio e `/au who`.
    - **Cosa aspettarti:** razza e classe personalizzate del suo profilo, e temperamento o morale se i suoi tratti sono netti; con `/au who trp3 off` non si legge nulla.
    - **Cosa riportare:** se qualcosa non torna o compaiono errori (l'API `register.getUnitIDCurrentProfile` non è stata provata).
64. **La memoria dei luoghi resta.** Con un personaggio che ha già usato l'addon (luoghi nel diario), entra in una zona già visitata, poi `/reload`, poi `/au journal places`.
    - **Cosa aspettarti:** la zona non risulta «nuova» (nessuna prima visita ripetuta) e compare una sola volta; dopo la visita la memoria la riconosce per numero di mappa.

## S7: contenuti Alpha e prova G2 (aggiunto dallo step S7)

65. **Vertical slice A: arrivo in foresta.** Con un personaggio nuovo per l'addon (o dopo `/au journal reset places`), intensità 50, entra per la prima volta in una foresta (Elwynn Forest, Teldrassil, Ashenvale). Ripeti con le tre profondità (`/au depth natural|literary|elevated`) e con due archetipi diversi (`/au soul`).
    - **Cosa aspettarti:** una frase di prima visita nel narratore privato (pensiero, battuta o narratore esterno), diversa per profondità e temperamento; nessuna frase di ritorno.
    - **Cosa riportare:** il testo esatto, se suona bene in italiano e in inglese, se il tono cambia davvero con profondità e archetipo.
66. **Vertical slice C: ritorno nella foresta.** Esci dalla foresta, aspetta almeno 10 minuti (o `/reload` e torna il giorno dopo), rientra. Poi muori nella foresta, esci e rientra; e una volta fuggi con poca salute.
    - **Cosa aspettarti:** una frase di ritorno che cita solo ciò che è vero (la morte o la fuga solo dopo averle vissute), il diario aggiornato (`/au journal`).
    - **Cosa riportare:** frasi che citano un ricordo falso (deve essere NO), ripetizioni, frasi troppo frequenti.
67. **Varietà.** Gioca un'ora tra combattimenti, zone, locande, morti e saluti.
    - **Cosa aspettarti:** la stessa frase non torna di fila; varianti diverse della stessa intenzione; il narratore esterno compare anche fuori dal combattimento.
    - **Cosa riportare:** le frasi sentite troppo spesso, quelle che stonano (registro, genere, lore) e quelle troppo lunghe per la chat.
68. **Voce NPC.** Parla con un locandiere, un mercante e un maestro di volo.
    - **Cosa aspettarti:** a volte una battuta con l'etichetta «NPC» nel narratore privato, mai in chat.
    - **Cosa riportare:** se si capisce che è contenuto simulato, se il tono segue il ruolo.

## S8/G3: il locandiere e i dialoghi ambientali (aggiunto dallo step S8)

I dialoghi ambientali (`/au talk`) sono **simulati**: la finestra lo dice in cima («dialogo ambientale dell'addon») e **nulla** va in chat. I passi seguenti mettono alla prova la vertical slice B del GDD (§21: dialogo al locandiere → due scelte → battuta → chiusura senza interferire con WoW). Lo stato in `/au talk status`; il registro curato ha pochi NPC (e i loro numeri sono quelli di Classic Era, non verificati): se un NPC non viene riconosciuto è un dato utile da riportare, non un errore.

75. **Senza un NPC vero.** `/au talk test` (poi `prova burbero`, `prova gioviale`, `prova caloroso`, `prova formale`, `prova laconico`).
    - **Cosa aspettarti:** una finestra con una fascia colorata in cima che dice «dialogo ambientale dell'addon», il titolo «locandiere · Locandiere di prova · prova», una battuta tra virgolette, tre risposte. La finestra non si sovrappone a niente di importante; si trascina dalla fascia; la x la chiude subito; nulla compare in chat; `/au debug` ha una riga `NPC Alive`.
    - **Cosa riportare:** testo tagliato o sovrapposto, dimensione e leggibilità, se la fascia si distingue, se il testo cambia davvero con lo stile scelto.
76. **Locandiere, vertical slice B.** Vai da un locandiere del registro (Innkeeper Farley a Goldshire, Innkeeper Firebrew a Forgiardente, Innkeeper Gryshka a Orgrimmar) e apri il suo dialogo di Blizzard.
    - **Cosa aspettarti:** un piccolo pulsante «Ascolta (dialogo ambientale)» accanto, **non sopra** la finestra del gossip; premilo, scegli «Che notizie corrono?» o «Cerco un posto per riposare.», poi una seconda risposta, poi chiudi. La finestra di Blizzard resta com'era (non si chiude, non si sposta, le sue opzioni funzionano).
    - **Cosa riportare:** se compare, dove, se copre qualcosa (la finestra di gossip, quella del mercante, le borse, la mappa), se premere i pulsanti cambia qualcosa nel gossip o nelle quest (**non deve**), se la battuta suona come un locandiere (e se Farley, Firebrew o Gryshka hanno battute proprie), se qualcosa va in chat (**non deve**).
77. **Un locandiere qualunque.** Parla con un locandiere che non è nel registro, poi scrivi `/au talk`.
    - **Cosa aspettarti:** nessun dialogo e un messaggio che dice che non sa con certezza chi sia. Poi fissa la dimora da lui (o scrivi `/au talk role innkeeper` dopo aver aperto il suo gossip): ora il dialogo si apre.
    - **Cosa riportare:** se il suo gossip non basta e se «fissare la dimora» lo riconosce; il suo `npcID` da `/au who` se vuoi aggiungerlo al registro.
78. **Mercante, maestro di volo, addestratore, guardia.** Apri il mercato di un mercante, la mappa dei voli, l'addestramento di una classe, poi usa `/au talk`; per una guardia di città (Stormwind City Guard, Ironforge Guard, Orgrimmar Grunt) prendila come bersaglio e scrivi `/au talk`.
    - **Cosa aspettarti:** l'offerta sul mercato, sul volo e sull'addestramento (la finestra di Blizzard non cambia); la guardia solo se il suo `npcID` è giusto. Mai su una quest, su un giocatore, su una creatura ostile.
    - **Cosa riportare:** quali interazioni fanno comparire l'offerta e quali no; i numeri `npcID` delle guardie se non vengono riconosciute (`/au who`).
79. **Posizione.** Con il dialogo aperto apri la borsa, il mercante, la mappa del mondo e le quest; trascina la finestra e riaprila.
    - **Cosa aspettarti:** la finestra si sposta da sola per non coprire le finestre di Blizzard; la posizione scelta si conserva; non si chiude con Esc insieme alle altre.
    - **Cosa riportare:** quali finestre copre (nomi dei frame che non conosce), se «saltella» da una posizione all'altra.
80. **Interruzioni.** Con un dialogo aperto: entra in combattimento, cambia zona, parla con un altro NPC, aspetta due minuti senza scegliere.
    - **Cosa aspettarti:** il dialogo si chiude da solo (con un altro NPC compare la sua offerta); mai un errore.
    - **Cosa riportare:** quando non si chiude e dovrebbe.
81. **Carattere e relazione.** Parla più volte con lo stesso locandiere in giorni diversi, e confronta con uno burbero (Gryshka) e uno gioviale (Farley).
    - **Cosa aspettarti:** battute diverse per carattere; dopo qualche interazione vera, battute da persona che ti conosce; se gli hai già chiesto le notizie, una battuta che lo ricorda. Il diario (`/au journal`) mostra i flag `npcd_innkeeper_...` e un ricordo «Una chiacchierata»; `/au relationships` mostra qualche punto di familiarità in più, ma poco.
    - **Cosa riportare:** battute che stonano, ripetizioni, numeri di relazione sproporzionati.
82. **Dopo /reload.** Fai un dialogo con una risposta, poi `/reload`.
    - **Cosa aspettarti:** nessuna finestra aperta; i flag e il ricordo ci sono ancora; nessuna battuta è salvata.
83. **Impostazioni.** `/au talk offer off` poi riapri un mercato; intensità 0 (`/au intensity 0`); modulo «Dialoghi NPC» spento.
    - **Cosa aspettarti:** niente offerta da sola, ma `/au talk` apre ancora il dialogo (tranne col modulo spento, che lo dice).

## S9: le storie personali (aggiunto dallo step S9)

Gli archi (`/au stories`, scheda «Storie» del diario) sono **racconti del personaggio, non missioni**: nessuna ricompensa, nessun effetto sul gioco. Cominciano solo da un evento vero. I passi seguenti mettono alla prova ciò che i test fuori dal gioco non possono: i dati del client vero (mappa, zona, NPC) e il tono.

84. **Il sentiero ritrovato.** Con un personaggio di livello 12 o più, entra nella zona da cui è cominciata la sua avventura (Elwynn Forest, Dun Morogh, Teldrassil, Durotar, Mulgore, Tirisfal Glades secondo la razza). Prima di entrare fai `/au place` e annota il **numero di mappa** e il nome della zona.
    - **Cosa aspettarti:** pochi secondi dopo l'ingresso una frase nel narratore (apertura dell'arco) e `/au stories` che elenca «Il sentiero ritrovato» come scoperta. Il diario (scheda «Storie») mostra il racconto.
    - **Cosa riportare:** se l'arco si apre davvero (mapID o nome della zona: dice quale dei due ha funzionato), se **non** si apre in un'altra zona o sotto il livello 12, se la frase c'è, se è giusta.
85. **La scelta.** Aspetta due minuti nella zona (o cambia sottozona) e controlla l'avviso nel narratore «Una storia attende una tua scelta». Apri il diario, scheda «Storie», entra nel dettaglio («…») e scegli una delle tre risposte con il pulsante «>». Oppure `/au stories choose path gratitude`.
    - **Cosa aspettarti:** la frase cambia con la scelta; il racconto mostra «Hai scelto…» con la nota; l'arco passa a «meditata».
    - **Cosa riportare:** se le righe del dettaglio **stanno nella finestra** (testi tagliati o sovrapposti), se i pulsanti di 24 pixel («>», «II», «x», «-») sono leggibili, se il suggerimento compare.
86. **La chiusura.** Esci dalla zona di partenza (dopo almeno un minuto dalla scelta).
    - **Cosa aspettarti:** una frase conclusiva, l'arco tra le «Storie concluse», un nuovo ricordo «Storia: Il sentiero ritrovato» nella scheda Ricordi, marcato permanente.
    - **Cosa riportare:** se il ricordo c'è, se è permanente, se resta dopo `/reload`.
87. **Posti, sospendere, saltare, disattivare.** Con `/au stories max 1` e un secondo arco che si apre (vedi 88–90), controlla che il secondo resti «disponibile». Prova `suspend`, `resume`, `skip`, `disable`, `enable` (diario e comando), poi `/au stories suspend all` e `/au stories disable all` (spegne il modulo).
    - **Cosa aspettarti:** i posti sono rispettati; un arco saltato o sospeso non avanza; con il modulo spento nessun arco si apre o parla (`/au stories on` riaccende).
    - **Cosa riportare:** ogni caso in cui un arco si muove o parla contro la tua scelta.
88. **Un volto noto.** Parla (gossip, mercante, volo, addestratore o locandiere) con lo stesso NPC in giorni diversi finché `/au relationships` dice che è conosciuto.
    - **Cosa aspettarti:** a familiarità 25 l'arco si lega a quell'NPC e la frase ne dice il nome; più avanti (40, poi 55) chiede una scelta e si chiude. Un altro NPC non lo fa avanzare.
    - **Cosa riportare:** quanti giorni servono, se il ruolo viene riconosciuto (`/au who`), se la frase nomina l'NPC giusto, se le soglie sembrano troppo alte o basse.
89. **Il luogo della caduta.** Muori a livello 10 o più. Dopo un po' (e dopo essere stato vivo), cambia zona e torna nel luogo della morte dopo più di dieci minuti. Poi sali di livello.
    - **Cosa aspettarti:** una frase di apertura **dopo** che sei tornato in vita (mai da morto); al ritorno nel luogo una scelta (silenzio, rimettere in ordine, proseguire); alla salita di livello la chiusura.
    - **Cosa riportare:** se la frase parte da viva, se il ritorno viene riconosciuto, se con `/au soul avoid morte` l'arco **non** si apre.
90. **Le tre porte.** Visita tre capitali diverse (anche solo Orgrimmar, Thunder Bluff e Undercity).
    - **Cosa aspettarti:** alla seconda l'arco si apre; alla terza passa a «tre porte attraversate». Dopo dieci minuti il diario offre la scelta («Che cosa cerchi…»); lasciando la capitale per la strada l'arco si chiude.
    - **Cosa riportare:** se le capitali sono riconosciute (`/au place` in ciascuna, capitale: sì), se l'offerta compare dopo la pausa.
91. **Nessuna cascata, nessun fastidio.** Gioca un'ora con due archi attivi.
    - **Cosa aspettarti:** le battute degli archi sono rare e mai due ravvicinate; nessuna in combattimento, in incursione o in campo di battaglia; con l'intensità a 0 nessuna.
    - **Cosa riportare:** frasi troppo frequenti, frasi nel momento sbagliato, ripetizioni.
92. **Dopo /reload.** Con un arco in attesa di una scelta, uno sospeso e uno concluso: `/reload`.
    - **Cosa aspettarti:** tutto com'era, nessuna battuta ripetuta, nessun arco che si riapre.
    - **Cosa riportare:** ogni differenza, e se la scelta in attesa c'è ancora.

## Q3: correzioni e miglioramenti (aggiunto dalla correzione Q3)

Corrette fuori dal gioco le issue #9, #13, #21, #23, #26, #37 e #38. Restano da provare nel client vero:

69. **"Un'altra" (issue #13).** Con `/au mode confirm` fai comparire una proposta (`/au greet`, `/au event zone`...). Premi **Un'altra** (o `/au another`, o il tasto assegnato in Opzioni > Comandi > AddOn).
    - **Cosa aspettarti:** la frase cambia con un'altra per lo stesso momento, il canale scelto resta, **nulla va in chat**. Premendolo molte volte compaiono frasi diverse; se non ce ne sono altre, un avviso «nessuna frase adatta». Con l'editor aperto (Modifica) rifiuta e dice di chiuderlo. Con l'intensità e le pause normali non cambia la frequenza delle frasi spontanee.
    - **Cosa riportare:** se la barra con sei pulsanti **sta nel riquadro** (testi tagliati o che si toccano, anche in inglese), se il pulsante lavora con una proposta in anteprima, quante frasi diverse vedi per evento.
70. **Dopo il mouse (issue #21, vedi passo 24).** Tieni il mouse sul riquadro più a lungo della durata della frase, poi toglilo.
    - **Cosa aspettarti:** il riquadro resta ancora circa un secondo e mezzo, poi sparisce. Dal #186 non sbiadisce più: la linea del tempo in basso finisce e il riquadro se ne va.
71. **Tratti dell'interlocutore e consenso TRP3 (issue #37).** `/au relationships`, apri una persona: sotto i tag ci sono **Ruolo, Temperamento, Morale, Obiettivi, Modo di parlare**. Clic: valore successivo, dopo l'ultimo «non so». Poi `/au options`: la riga **Leggi il Total RP 3 degli altri** (spenta di base); con TRP3 installato compare anche nel passo Total RP 3 del wizard (`/au wizard`).
    - **Cosa aspettarti:** la finestra (ora più alta) mostra tutto senza tagli, anche con tutti gli assi attivi; i valori scelti compaiono in `/au who` con la fonte «user»; l'interruttore dice cosa fa quando lo accendi e non legge nulla da TRP3 finché è spento.
    - **Cosa riportare:** testi tagliati o sovrapposti, anche in inglese; il pulsante del wizard (pagina TRP3) fuori dalla cornice.
72. **Emote in altre lingue (issue #38, solo con un client non inglese).** Fatti salutare con `/wave` rivolto a te, con il client in italiano, tedesco, francese, spagnolo, portoghese, russo, coreano o cinese; poi `/au who` e `/au debug full`.
    - **Cosa aspettarti:** l'azione «emote» compare tra le azioni recenti di chi ti ha salutato. Con un client inglese nulla cambia (parola `you`).
    - **Cosa riportare:** il **testo esatto** dell'emote che non viene riconosciuta (non verrà mai salvato dall'addon: serve solo a correggere la tabella `Interlocutor.YOU_WORDS`) e se, con `/au debug trace`, l'evento `CHAT_MSG_TEXT_EMOTE` porta il **destinatario** (quinto argomento) con il nome del tuo personaggio: è il segnale indipendente dalla lingua, mai provato.
73. **Una parola italiana con l'accento nei comandi (issue #26).** `/au intensità 40`, poi `/au Intensità 50`.
    - **Cosa aspettarti:** il comando è inglese, quindi l'addon risponde con il suggerimento `/au intensity` (anche con le maiuscole), senza errori Lua. **Cosa riportare:** se compare un errore o nessuna risposta.
74. **Una sessione lunga (issue #9).** Dopo un'ora di gioco con molti incantesimi, `/au debug` e `/au debug full`.
    - **Cosa aspettarti:** nessun errore; se in combattimento la salute risulta segreta (`value:player.hp` RESTRICTED) l'evento `HEALTH_CHANGED` compare ogni tanto, non a raffica.
    - **Cosa riportare:** il contatore «pubblicati»/«doppioni scartati» in `/au debug` dopo qualche minuto di combattimento.

## Q5: correzioni di codice (aggiunto dalla correzione Q5)

Corrette fuori dal gioco le issue #45, #46, #47, #48, #49, #50, #51, #52, #53, #54, #55 e #56. Restano da provare nel client vero:

93. **L'invio bloccato in silenzio (issue #55, ipotesi SP-05).** Con `/au mode auto` (due passi) in una zona del mondo aperto, o con `/au mode confirm` e un canale che il client non permette senza un gesto (gruppo, gilda), prova a far partire una frase. Poi `/au debug`.
    - **Cosa aspettarti:** se il client blocca la chiamata senza un errore Lua, l'addon stampa «il client ha bloccato l'invio», la proposta resta in attesa, `last refusal blocked` e `blocked by the client` aumenta; `sent` non cresce.
    - **Cosa riportare:** quale evento arriva (`/au debug trace` mostra `ACTION_BLOCKED` con `func=SendChatMessage`), con che argomenti (il primo è il nome dell'addon o un valore vero/falso?), e se compare comunque il popup di Blizzard.
94. **Il ritorno dopo una schermata di caricamento (issue #47).** Visita una zona, esci per più di 20 minuti, poi rientrandovi con un portale, una nave o uno zeppelin tra continenti, la pietra del ritorno o uscendo da un'istanza. Prima con `/au chance zone 100` e `/au chance memory_return 100`, poi `/au debug trace`.
    - **Cosa aspettarti:** dopo qualche secondo **una sola** frase: il richiamo di memoria («Rieccomi...») e non l'atmosfera di zona; in `/au debug` (riga Narrative Director) `memory_return=spoken` e `zone=outranked`. All'accesso e dopo un `/reload` nessun richiamo.
    - **Cosa riportare:** l'**ordine** in cui arrivano `WORLD_ENTER` (PLAYER_ENTERING_WORLD) e `ZONE_ENTER` (ZONE_CHANGED_NEW_AREA) nella traccia, per ogni tipo di passaggio; se la frase manca o è doppia.
95. **I rapporti non hanno nomi altrui (issue #53).** Dopo uno scambio, un sussurro, una sfida a duello, un invito e un'emote rivolta a te: `/au debug full` e `/au debug trace`.
    - **Cosa aspettarti:** nessun nome di altri giocatori (appare `<hidden>`); zona, nome dell'incantesimo e NPC restano leggibili.
    - **Cosa riportare:** ogni nome di persona che compare (errore da segnalare).
96. **Ritorno in vita da fantasma (issue #56).** Muori, rilascia lo spirito, torna al corpo (o fatti resuscitare).
    - **Cosa aspettarti:** la frase di ritorno in vita parte **una sola volta**, quando torni davvero vivo, non quando diventi fantasma.
    - **Cosa riportare:** gli eventi in `/au debug trace` (`PLAYER_REVIVE` con `deadOrGhost`), se la frase parte da fantasma o due volte.
97. **Il rapporto è di chi ti saluta (issue #48).** Con un bersaglio che hai in lista come nemico, fatti salutare con `/wave` da un amico che hai in lista (`/au relationships`); `/au who`.
    - **Cosa aspettarti:** `/au who` mostra l'amico (non il nemico) come interlocutore, con il suo rapporto.
    - **Cosa riportare:** se mostra il rapporto del bersaglio.
98. **Pannello delle impostazioni, descrizioni, finestre (issue #54, FrameXML).** `/au options`, passa il mouse sul pulsante «libro» e sui pulsanti delle finestre, apri il diario con la casella di esportazione.
    - **Cosa aspettarti:** il pannello compare tra le opzioni dei componenti aggiuntivi; i suggerimenti (tooltip) mostrano il titolo e le righe; i pulsanti hanno l'aspetto standard.
    - **Cosa riportare:** `/au debug full` (righe `api:`), errori rossi in `GameTooltip:SetOwner`/`AddLine`, `UIPanelButtonTemplate`, `InputBoxTemplate`, `UIPanelScrollFrameTemplate`, `ScrollToBottom`.

---

## Step 0: inglese per primo, comandi sempre inglesi (aggiunto dall'issue #132)

Provato fuori dal gioco. Restano da provare nel client vero:

99. **Installazione nuova: parte in inglese.** Con le variabili salvate cancellate (o con un account nuovo), entra in gioco: la procedura guidata e i messaggi sono **in inglese** e il primo passo offre **English** e **Italiano**.
    - **Cosa aspettarti:** `/au help` in inglese, con i nomi dei comandi inglesi; scegliendo **Italiano** la procedura guidata e i messaggi passano subito all'italiano.
    - **Cosa riportare:** testi ancora in italiano nella versione inglese (o viceversa), testi tagliati o sovrapposti.
100. **Chi aveva già l'italiano lo tiene.** Con le variabili salvate di prima (`locale = "it"`), entra in gioco.
    - **Cosa aspettarti:** tutto in italiano, la procedura guidata non ricompare.
101. **I nomi dei comandi sono inglesi, anche in italiano.** Con l'interfaccia in italiano scrivi `/au help`, poi `/au journal`, `/au relationships`, `/au talk`, `/au stories`, `/au mode preview`, `/au channel party`, `/au depth literary`.
    - **Cosa aspettarti:** l'elenco mostra i comandi inglesi con la descrizione in italiano; ogni comando funziona.
    - **Cosa riportare:** un comando che non risponde o una descrizione mancante.
102. **Una parola italiana dà il suggerimento.** Scrivi `/au diario`, `/au prova`, `/au intensita 10`, `/au zzzz`.
    - **Cosa aspettarti:** per le prime tre «Intendevi /au journal?» (e `test`, `intensity`); per l'ultima il rimando a `/au help`. Nulla cambia.
    - **Cosa riportare:** il testo esatto se è sbagliato.
103. **Nomi dei tasti.** In *Opzioni → Comandi → AddOn → Azeroth Unspoken* i nomi dei tasti seguono la lingua del **client** (inglese o italiano), non quella dell'addon.

---

## L0: forme letterarie, pacchetto dei versi (aggiunto dalle issue #115 e #116)

Provato fuori dal gioco. Serve la cartella `AzerothUnspoken_Versi` in `AddOns` (la installa `python tools/install_addon.py`). Restano da provare nel client vero:

104. **Il pacchetto c'è.** `/au packs`, poi `/au validate versi`.
    - **Cosa aspettarti:** la riga `Verses: literary forms (prototype) (versi) - on`; il validatore dice 30 frasi (15 pezzi e i loro gemelli di prova), 0 errori, 0 avvisi.
105. **I pezzi a mano, in inglese e in italiano.** Con `/au mode confirm` scrivi `/au event lore_test` una decina di volte; poi `/au language it` e ancora qualche volta (alla fine torna alla tua lingua).
    - **Cosa aspettarti:** ogni volta un pezzo nel narratore, con la voce interiore o dell'NPC; **mai** una proposta per la chat e nulla in chat, anche in modalità `confirm`.
    - **Cosa riportare:** il **giudizio A/B** che decide la issue #117: i versi su una riga con " / " si leggono bene, o servono gli a capo veri? Un pezzo tagliato, che esce dal riquadro, che si legge troppo in fretta, o che suona male (quale e perché).
106. **Nel posto giusto.** Entra per la prima volta in una zona di rovine (Arathi Highlands, Desolace, Tanaris, Uldaman...) o in un luogo sacro (Moonglade, Light's Hope Chapel), con `/au chance zone 100`. Usa la pietra del ritorno con `/au chance travel 100`; scrivi `/au pray`.
    - **Cosa aspettarti:** a volte un'iscrizione, una canzone di viaggio o l'inno (competono con le frasi di base: non sempre); mai in combattimento; lo stesso pezzo non torna prima di qualche giorno.
    - **Cosa riportare:** il pezzo uscito e il momento; uno che stona col luogo.
107. **Dal locandiere.** Apri il dialogo ambientale con un locandiere (vedi passi 75–83), scegli *siediti* e *notizie*.
    - **Cosa aspettarti:** a volte la filastrocca della locanda, nella voce dell'NPC, nella finestra del dialogo; mai in chat.
108. **Spegnere il pacchetto.** `/au pack versi off`, poi `/au event lore_test`; infine `/au pack versi on`.
    - **Cosa aspettarti:** da spento nessun pezzo («nessuna frase»); da riacceso tornano.

---

## R0: misure e prova delle API (aggiunto dalle issue #81 e #82)

**A cosa serve.** Tutti i numeri sulla velocità e sulla memoria dell'addon sono stati misurati fuori dal gioco, e molte funzioni del client (meteo, giorno e notte, missioni, reputazione, sottozone...) risultano nell'elenco delle API ma **nessuno ha mai verificato che funzionino davvero**. Questa parte raccoglie i numeri veri e l'elenco delle API confermate: da lì si decidono il budget di memoria e di tempo (decisione D3) e quali funzioni usare (D5, D14).

**Come funziona.** Due comandi, che **non scrivono in chat, non salvano nulla e non mostrano nomi** di altri giocatori, né il nome del tuo personaggio, né coordinate:

- `/au prof` misura l'addon: tempo di scelta di una frase (`PickEntry`) e di lettura del contesto (`BuildContext`), memoria, e quante volte il narratore ha parlato o taciuto (e perché) in questa sessione. `/au prof reset` azzera i contatori.
- `/au probe` prova le API e stampa una riga per ognuna: `AVAILABLE` (la chiamata funziona), `MISSING` (non esiste) o `RESTRICTED` (il client la nasconde o la rifiuta), con un esempio del valore. Alla **prima** esecuzione si mettono anche in ascolto gli eventi (meteo, giorno e notte, sottozone, missioni...) fino al riavvio del gioco: i comandi dopo mostrano **quante volte** ogni evento è scattato. `/au probe reset` azzera i conteggi, `/au probe stop` ferma l'ascolto.
- Per **copiare** il risultato: `/au prof copy` e `/au probe copy` aprono una finestra con il testo già selezionato: premi **Ctrl+C**, poi incolla (**Ctrl+V**) nell'issue. Le righe in chat non si copiano comodamente.

Il testo dei rapporti è sempre in **inglese**, qualunque lingua scelga: serve per incollarlo in una issue. Prima di incollare, leggilo una volta: se trovi un nome di un altro giocatore, **è un errore da segnalare** (e cancellalo dal testo).

**Quanto tempo.** Circa 30 minuti, più il tempo che passa in mezzo (la memoria dopo un'ora di gioco, il tramonto...). Puoi fare i passi in giorni diversi: ogni passo sta in piedi da solo. **Fai al più i passi che ti capitano:** se non c'è pioggia nel posto dove giochi, salta R0.7 e annota «niente pioggia».

- **R0.1 · Prima misura, subito dopo l'accesso.** Entra in gioco con il personaggio di prova, aspetta circa un minuto, poi scrivi `/au prof reset` e subito `/au probe`.
    - **Cosa aspettarti:** poche righe di conferma, poi un elenco di righe che cominciano con `[AVAILABLE]`, `[RESTRICTED]` o `[MISSING]`, e in fondo `Summary: ...`. Nessun errore rosso.
    - **Cosa riportare:** non serve ancora nulla: questo passo avvia l'ascolto degli eventi. Se compare un errore, uno screenshot.
- **R0.2 · Memoria e tempi dopo l'accesso.** Gioca 5 minuti come al solito (cammina, apri una mappa, combatti), poi scrivi `/au prof copy` e copia il testo con Ctrl+C.
    - **Cosa aspettarti:** righe `PickEntry: n=..., p50 ... ms, p95 ... ms`, `BuildContext: ...`, `Memory (this addon): ... KB now` e un blocco `Director:` con i conteggi.
    - **Cosa riportare:** **tutto il testo**. Se `Timing: debugprofilestop MISSING` o `Memory ... not read`, è un risultato importante: riportalo così.
- **R0.3 · Tempo di caricamento (a mano).** Con un cronometro (o il telefono): misura i secondi dalla pressione di **Entra in gioco** alla comparsa del mondo. Fallo **3 volte con l'addon attivo** e **3 con l'addon disattivato** (dalla lista AddOn, nella schermata di selezione del personaggio; poi riattivalo).
    - **Cosa aspettarti:** una differenza piccola.
    - **Cosa riportare:** i sei tempi in secondi, e se il disco è un SSD o un disco normale.
- **R0.4 · In una capitale** (Orgrimmar, Roccavento, Forgiardente, Darnassus...: la più affollata che hai). Cammina per 10 minuti tra la gente, poi `/au probe copy` e, in una seconda copia, `/au prof copy`.
    - **Cosa aspettarti:** i valori di `/au prof` salgono un po'. Le righe `event ZONE_CHANGED...` possono essere scattate.
    - **Cosa riportare:** i due testi, e **il nome della città** nell'issue (non nel testo).
- **R0.5 · Nel mondo aperto.** Cammina per 10 minuti attraversando almeno due o tre sottozone (le scritte che compaiono al centro dello schermo). Poi `/au probe copy`.
    - **Cosa aspettarti:** `event ZONE_CHANGED` (e/o `ZONE_CHANGED_INDOORS`, `ZONE_CHANGED_NEW_AREA`) con `fired N times`; `C_AreaPoiInfo.GetAreaPOIForMap` con un numero di punti di interesse.
    - **Cosa riportare:** il testo, e quali scritte di sottozona ti sono comparse (se una nuova scoperta ha fatto comparire qualcosa di diverso: eventi `MAP_EXPLORATION_UPDATED`).
- **R0.6 · In un'istanza** (un dungeon qualunque, anche con un solo giocatore). Appena entrato, `/au probe copy`; poi dopo un combattimento `/au prof copy`.
    - **Cosa aspettarti:** `UnitPosition` con `[instance: party]`: `RESTRICTED ... returned nil` (le coordinate nascoste) oppure `AVAILABLE`.
    - **Cosa riportare:** la riga `UnitPosition` e i due testi; se qualcosa si è bloccato nei combattimenti.
- **R0.7 · Con la pioggia o la neve.** Vai dove piove (o nevica). Scrivi `/au probe` e leggi `C_Weather.GetCurrentWeather` e `event WEATHER_CHANGED`. Aspetta che smetta, poi `/au probe copy`.
    - **Cosa aspettarti:** `-> {intensity=..., type=...}` con un numero per `type` che cambia tra cielo sereno e pioggia/neve; `Enum.WeatherType` con i nomi dei tipi (`Clear=0, Rain=1...`).
    - **Cosa riportare:** il testo **con la pioggia** (sia l'inizio sia la fine) e **a cielo sereno**, e che tempo c'era in ciascuno. Se `C_Weather` è `MISSING` o `RESTRICTED`, riportalo.
- **R0.8 · Al tramonto o all'alba.** Resta in un posto tranquillo per un quarto d'ora a cavallo del tramonto (le 18-20 di gioco) o dell'alba (5-7), con `/au probe` prima e dopo, poi `/au probe copy`.
    - **Cosa aspettarti:** `event DIEL_CYCLE_CHANGED` con `fired N times` e `IsDayTime true/false` che cambia; `C_DateAndTime.IsDayTime` e l'ora di gioco `game time HH:MM`.
    - **Cosa riportare:** il testo; l'**ora di gioco** a cui è scattato l'evento (il testo la mostra). Se non è scattato nulla, riportalo.
- **R0.9 · Missioni e reputazione.** Con almeno una missione nel registro: `/au probe`; accetta una missione nuova e consegnane una; di nuovo `/au probe copy`. Poi seleziona un PNG e un mostro, e ripeti `/au probe` per ciascuno.
    - **Cosa aspettarti:** `C_QuestLog.GetInfo` con i campi della missione (`questID=...`, il titolo è solo una lunghezza); `event QUEST_ACCEPTED` e `QUEST_TURNED_IN` con il `payload`; `C_Reputation.GetFactionDataByIndex` con i campi (compare `reaction`?); `UnitReaction ... an index from 1 to 8: yes`.
    - **Cosa riportare:** il testo. Se `UnitReaction` dice `NO` o i campi mancano, è un risultato importante.
- **R0.10 · Locanda e volo.** Entra in una locanda (fino a che compare l'icona del riposo) e prendi un volo (parla con il maestro di volo e parti). Poi `/au probe copy`.
    - **Cosa aspettarti:** `event PLAYER_UPDATE_RESTING` e `event TAXIMAP_OPENED` con `fired N times`; `UnitOnTaxi` con `true` se lo scrivi **durante** il volo.
    - **Cosa riportare:** il testo; se `UnitOnTaxi` non dice `true` mentre voli.
- **R0.11 · In combattimento.** Con un animale, scrivi `/au probe` **mentre combatti** (poi finisci il combattimento e ripeti).
    - **Cosa aspettarti:** `C_AddOns.LoadAddOn: ... [in combat]` e `[out of combat]` nei due testi, e le righe `C_Secrets...` (`-> true/false`) e `C_RestrictedActions...` (`Combat=1` dentro, `Combat=0` fuori).
    - **Cosa riportare:** le righe `LoadAddOn`, `C_Secrets` e `C_RestrictedActions` nei due casi.
- **R0.12 · Dopo un'ora di gioco.** A un'ora dall'accesso scrivi `/au prof copy`.
    - **Cosa aspettarti:** `Memory samples (session time): ...` con il campione dell'inizio e quello di adesso; `spoken per session hour: ...`.
    - **Cosa riportare:** il testo, e se il gioco è diventato più lento.
- **R0.13 · Mandare i risultati.** Apri una issue nuova (<https://github.com/Finland6738/azeroth-unspoken/issues/new/choose>) con il modulo **Bug report**: titolo `[Bug] R0 in-game results` (non è un errore: è il modulo che abbiamo). In **What happened?** scrivi «Not a bug: R0 measurements (#81, #82)». In **Steps to reproduce** scrivi i posti e i momenti dei passi che hai fatto. Nel campo **Lua errors or diagnostics** incolla i testi (uno sotto l'altro, ognuno con un titolo come «R0.4 capital: probe») dei passi che hai fatto. **Senza nomi di altri giocatori** (e, se vuoi, anche senza il nome del tuo personaggio); mai percorsi del tuo PC.
    - **Cosa aspettarti:** i rapporti non hanno nomi, ma rileggili una volta.
    - **Cosa riportare:** il link della issue.

## R1: pacchetti di lingua e regionali (aggiunto dalle issue #85 e #101)

**A cosa serve.** L'addon ora è un download con più cartelle: le frasi di ogni lingua stanno in una cartella a parte (`AzerothUnspoken_enUS`, `AzerothUnspoken_itIT`) e quelle legate a un continente in altre (`AzerothUnspoken_Kalimdor`, `AzerothUnspoken_EasternKingdoms` e le loro `_enUS`/`_itIT`). L'addon carica da solo **solo la lingua scelta** e **solo il continente in cui sei**, fuori dal combattimento, con `C_AddOns.LoadAddOn`: nessuno l'ha mai provato nel client vero. `/au packs` mostra lo stato di ogni cartella: `caricata`, `non caricata (ora non serve)`, `non installata`, `non caricabile (motivo)`; la prima riga dice la lingua delle frasi, la regione e i contatori (caricamenti, costruzioni, rilasci, attese per il combattimento).

- **R1.1 · Installazione e primo accesso.** Copia in `AddOns` **tutte** le cartelle `AzerothUnspoken*` del download (cancella prima quelle vecchie). Alla selezione del personaggio apri **AddOn**: le cartelle delle lingue e dei continenti devono essere spuntate e segnate *Caricamento su richiesta*. Entra in gioco in **Kalimdor** con la lingua **inglese** (`/au language en` e `/reload` se serve) e scrivi `/au packs`.
    - **Cosa aspettarti:** nessun errore rosso; `AzerothUnspoken_enUS ... loaded`, `AzerothUnspoken_itIT ... not loaded`; `region kalimdor`; `AzerothUnspoken_Kalimdor` e `AzerothUnspoken_Kalimdor_enUS` `loaded`, le cartelle `EasternKingdoms` `not loaded` (con l'inglese scelto le righe sono in inglese).
    - **Cosa riportare:** le righe di `/au packs`; se una cartella dice `could not be loaded`, il motivo tra parentesi.
- **R1.2 · Memoria all'accesso.** Dopo un minuto scrivi `/au prof copy`.
    - **Cosa aspettarti:** la memoria (ora somma l'addon e le cartelle caricate).
    - **Cosa riportare:** il testo.
- **R1.3 · Cambio di lingua e ricaricamento.** Nelle impostazioni clicca **Lingua delle frasi** fino a **Italiano**.
    - **Cosa aspettarti:** le finestre passano subito all'italiano; in chat un messaggio spiega che le frasi arrivano al prossimo ricaricamento; compare una finestra con **Ricarica adesso** e **Più tardi**, e nel pannello un pulsante **Ricarica adesso**. Prima di cliccare, `/au muse` dà ancora una frase in inglese. Clicca **Ricarica adesso**: dopo il ricaricamento `/au packs` mostra `AzerothUnspoken_itIT ... caricata` e `AzerothUnspoken_enUS ... non caricata`, e le frasi sono in italiano.
    - **Cosa riportare:** se la finestra compare (o solo il messaggio in chat), se il ricaricamento parte dal pulsante, le righe di `/au packs` dopo.
- **R1.4 · Cambio di continente.** Fuori dal combattimento prendi una nave, uno zeppelin o un portale per l'**altro continente**. Appena arrivato scrivi `/au packs`; poi torna indietro e ripeti.
    - **Cosa aspettarti:** all'arrivo `regione eastern` (o `kalimdor`), le due cartelle del nuovo continente caricate; al ritorno i caricamenti non aumentano (le cartelle restano caricate), aumentano costruzioni e rilasci. Nessun blocco del gioco oltre la schermata di caricamento.
    - **Cosa riportare:** le righe di `/au packs` all'andata e al ritorno; se hai notato un blocco, quando e quanto.
- **R1.5 · Combattimento.** Durante un combattimento scrivi `/reload`. Finito il combattimento, scrivi `/au packs`.
    - **Cosa aspettarti:** nessun errore; dopo il combattimento la cartella della lingua è caricata e il contatore delle attese per il combattimento è almeno 1. Se il combattimento finisce prima che il gioco sia di nuovo pronto, il contatore può restare 0: annotalo.
    - **Cosa riportare:** la prima riga di `/au packs`.
- **R1.6 · Una cartella mancante.** Con l'italiano scelto, alla selezione del personaggio togli la spunta a `Azeroth Unspoken - Italian phrases` ed entra.
    - **Cosa aspettarti:** in chat, una sola volta, `non si è potuta caricare la cartella AzerothUnspoken_itIT (DISABLED)` e che le frasi restano in inglese; le frasi arrivano in inglese, le finestre restano in italiano; nessun errore rosso. Rimetti la spunta dopo.
    - **Cosa riportare:** il messaggio esatto (il motivo tra parentesi).
- **R1.7 · Memoria dopo i due continenti.** Dopo aver visitato i due continenti (R1.4), scrivi `/au prof copy`.
    - **Cosa aspettarti:** la memoria cresce poco rispetto a R1.2 (oggi i pacchetti regionali sono piccoli).
    - **Cosa riportare:** il testo.

## R4b: relazioni con altri giocatori (aggiunto dalle issue #106, #107, #108, #109 e #110)

**A cosa serve.** Il personaggio ricorda gli altri giocatori che metti in lista: la scheda di una persona ha ora due parti, **«Cosa hai scelto tu»** (assi, etichetta, sentimenti, nota, tag: li cambi solo tu) e **«Cosa ha osservato l'addon»** (quanti incontri, di che tipo, gli ultimi cinque fatti con luogo e data, mai testi). Servono **un secondo giocatore** (un amico o un'altra tua copia del gioco) e, se possibile, un gruppo. Tutto quello che segue è provato fuori dal gioco con la finta API; qui si verifica che il client vero mandi gli eventi giusti (`GROUP_ROSTER_UPDATE`, `UnitFullName` sui compagni, emote con destinatario, `C_Map.GetBestMapForUnit`) e che la finestra, ora più alta, entri nello schermo.

- **R4b.1 · Aggiungere una persona.** Apri `/au relationships`, scheda **Persone incontrate** o scrivi il nome in **Aggiungi un giocatore**, poi apri la scheda della persona.
    - **Cosa aspettarti:** due sezioni, «Cosa hai scelto tu» e «Cosa ha osservato l'addon» (all'inizio «Ancora nulla di osservato»); in fondo i pulsanti **Dimentica le osservazioni**, **Rimuovi la persona** e **Torna all'elenco**; la finestra intera sta nello schermo e i testi non si sovrappongono.
    - **Cosa riportare:** se qualcosa esce dai bordi o si sovrappone (risoluzione e scala dell'interfaccia).
- **R4b.2 · Il gruppo.** Entra in gruppo con la persona (o falla entrare). Ricontrolla la scheda.
    - **Cosa aspettarti:** **Incontri: 1 (gruppo 1)**, «Ultima volta» di oggi e un fatto «gruppo (nome della zona)». Se esci e rientri subito, il conteggio **non** sale (stesso tipo entro dieci minuti).
    - **Cosa riportare:** il testo della sezione e la zona mostrata.
- **R4b.3 · Duello, invito, scambio, emote.** Fatti chiedere un duello (annullalo), invitare, aprire uno scambio e salutare con un'emote rivolta a te (`/wave` sul tuo personaggio).
    - **Cosa aspettarti:** ogni tipo compare nell'elenco degli incontri della scheda. Un'emote **non** rivolta a te non conta. Chi **non** è in lista non compare da nessuna parte (nemmeno come proposta, salvo gruppo e scambio).
    - **Cosa riportare:** quali tipi sono stati contati; se un'emote rivolta a te non è stata riconosciuta.
- **R4b.4 · Il bersaglio.** Prendi come bersaglio la persona. Poi, nella finestra, accendi **Riconosci al bersaglio** e ripeti (togli il bersaglio e riprendilo).
    - **Cosa aspettarti:** il bersaglio conta come incontro (tipo «bersaglio») anche con l'opzione spenta; solo con l'opzione accesa il narratore può dire una frase di riconoscimento, **al massimo una per persona e per sessione**.
    - **Cosa riportare:** se la frase è comparsa nel narratore privato e quante volte.
- **R4b.5 · Il riconoscimento.** `/au chance relation_player 100`, poi esci dal gruppo e rientra con la persona (nuova sessione: `/reload` prima).
    - **Cosa aspettarti:** una frase del narratore **privato** (mai in chat). Se hai scelto un sentimento (R4b.6) la frase lo rispecchia; con più di nove giorni dall'ultima volta, a volte ricorda l'assenza.
    - **Cosa riportare:** la frase e se ha senso per la persona.
- **R4b.6 · Sentimenti.** Nella scheda scegli un sentimento (**fiducia**, **simpatia**, **diffidenza**, **paura**, **rancore**, **gratitudine**) e, se vuoi, **Assi tipici**. Prova anche l'etichetta **alleato** con il pulsante dell'etichetta.
    - **Cosa aspettarti:** il sentimento non cambia gli assi né l'etichetta da solo; **Assi tipici** sì, e puoi regolare i cursori dopo. Con diffidenza, paura o rancore nessuna frase calorosa («che piacere rivederti») esce per quella persona.
    - **Cosa riportare:** una frase per sentimento.
- **R4b.7 · Dimenticare o rimuovere.** **Dimentica le osservazioni** (clic, poi conferma), poi **Rimuovi la persona**.
    - **Cosa aspettarti:** la prima azione azzera solo gli incontri e i fatti; nota, etichetta, sentimenti e assi restano. La seconda cancella la persona.
    - **Cosa riportare:** se le due azioni si confondono.
- **R4b.8 · Una battaglia insieme.** Combatti con la persona in gruppo.
    - **Cosa aspettarti:** la scheda mostra «battaglia insieme 1» (non fa salire il numero degli incontri).
    - **Cosa riportare:** il testo.
- **R4b.9 · Esporta.** Premi **Esporta**.
    - **Cosa aspettarti:** una riga per persona con **Incontri: N (gruppo 1, ...)**, sentimento, tag e nota; nessun testo di chat.
    - **Cosa riportare:** il testo.

---

## U-api: robustezza delle API e prossimità in una folla (aggiunto dalle issue #166 e #164)

Nulla di questo è stato provato nel client vero. Serve una **capitale affollata** (Orgrimmar o Roccavento) e un amico in lista.

- **U-api.1 · Prossimità nella folla.** Aggiungi alla lista una o due persone, accendi **Riconosci chi è vicino**, `/au prof reset` (se disponibile), e resta due minuti in una capitale piena di giocatori con le nameplate dei giocatori accese.
    - **Cosa aspettarti:** nessun rallentamento visibile (fotogrammi al secondo come con l'opzione spenta); `/au debug` mostra nella riga delle relazioni quante osservazioni sono state **throttled** (centinaia in una folla) e **0 proposte** finché nessuno in lista si avvicina; `/au prof` non mostra costi insoliti per `NAME_PLATE_UNIT_ADDED` o `UPDATE_MOUSEOVER_UNIT`.
    - **Cosa riportare:** il numero di throttled dopo due minuti, i fotogrammi al secondo con l'opzione accesa e spenta, e se `UnitFullName` funziona sull'unità della nameplate.
- **U-api.2 · Una persona in lista nella folla.** Con la stessa opzione, fatti raggiungere da una persona in lista mentre ci sono molti altri giocatori attorno.
    - **Cosa aspettarti:** la persona viene riconosciuta (una volta per sessione) entro pochi secondi, anche con la folla; può servire che torni sulla nameplate o che tu la indichi col mouse.
    - **Cosa riportare:** quanto ci vuole, e se resta non riconosciuta nonostante più apparizioni.
- **U-api.3 · Senza persone in lista.** Con la lista vuota e senza consenso a Total RP 3, la stessa folla.
    - **Cosa aspettarti:** `/au debug` mostra 0 throttled e 0 secret: non viene letto nemmeno un nome.
    - **Cosa riportare:** qualunque valore diverso da zero.
- **U-api.4 · Modulo Relazioni spento.** Spegni il modulo **Relazioni** nelle impostazioni (con la prossimità accesa) e passa tra la folla.
    - **Cosa aspettarti:** nessun evento di nameplate o mouseover per l'addon (`/au debug` non elenca più `event:NAME_PLATE_UNIT_ADDED`).
    - **Cosa riportare:** se compaiono ancora.
- **U-api.5 · `/au probe` e `/au packs`.** Lancia `/au probe` dopo un po' di gioco, e `/au packs` dopo aver viaggiato tra due continenti.
    - **Cosa aspettarti:** `/au probe` arriva fino alla riga **Summary** senza errori Lua, anche se qualche API risponde in modo strano; `/au packs` non mostra cartelle «caricata, ma senza contenuto» né ripetizioni dello stesso messaggio. Se hai disattivato una cartella dall'elenco degli addon, il messaggio compare una volta sola, anche dopo molti viaggi.
    - **Cosa riportare:** ogni errore Lua, e il testo del messaggio se compare.
- **U-api.6 · Missioni.** Con il diario delle missioni vuoto e poi con alcune missioni, `/au debug`.
    - **Cosa aspettarti:** «quests 0» solo se il registro è davvero vuoto; con le missioni, il numero giusto. Se il client nega il registro (per esempio in un'istanza con restrizioni) la riga mostra «quests ?», non 0.
    - **Cosa riportare:** il valore nei due casi.

## R4b2: prossimità e lista condivisa (aggiunto dalle issue #113 e #114)

**A cosa serve.** Due opzioni, **entrambe spente di base**. **Riconosci chi è vicino**: nameplate e mouseover possono far riconoscere al narratore una persona **già in lista** (e, con il consenso a leggere i profili Total RP 3 degli altri, proporre chi ha un profilo), solo per la sessione, senza aggiungere né salvare nulla. **Condividi con l'account**: le **scelte** sulle persone (non le osservazioni) stanno nell'account e le usano tutti i tuoi personaggi. Servono **un secondo giocatore** (o più persone attorno, in città) e, per la condivisione, **due personaggi** dello stesso account. Tutto è provato fuori dal gioco con la finta API; qui si verifica che il client vero mandi gli eventi e che la finestra, ora più alta, entri nello schermo.

- **R4b2.1 · Spento di base.** Con `/au debug` leggi la riga delle relazioni: deve dire **proximity false** e **shared list off**. Passa in una città piena di gente, prendi qualcuno con il mouse.
    - **Cosa aspettarti:** nessuna frase di riconoscimento e nessuna nuova persona; il narratore non cambia comportamento.
    - **Cosa riportare:** se il comportamento cambia con l'opzione spenta.
- **R4b2.2 · Nameplate.** Aggiungi alla lista un amico (o un tuo secondo personaggio), poi accendi **Riconosci chi è vicino** (finestra, oppure `/au relationships proximity on`: due passi, con una finestra di conferma, issue #178). `/au chance relation_player 100`. Fatti vedere da lui con le nameplate dei giocatori attive, anche a distanza.
    - **Cosa aspettarti:** una frase di riconoscimento nel narratore **privato** (mai in chat), **una sola per persona e per sessione** (se esce dal campo e rientra, nessuna seconda), e non più di una proposta al minuto. Nella scheda della persona gli **incontri non salgono** (`Incontri` resta com'era) e non compare nessun nuovo fatto.
    - **Cosa riportare:** se la frase è comparsa, dopo quanto, e se `/au debug` mostra **proximity true (1 proposed, ...)**.
- **R4b2.3 · Mouseover.** Con la stessa opzione, passa il mouse su un'altra persona **già in lista** (un modello 3D nel mondo, non solo la nameplate).
    - **Cosa aspettarti:** lo stesso comportamento (una volta per persona e per sessione).
    - **Cosa riportare:** se l'evento `UPDATE_MOUSEOVER_UNIT` non arriva in qualche caso (frame dell'interfaccia, gruppo).
- **R4b2.4 · Estranei.** Con l'opzione accesa, passa tra persone **non** in lista.
    - **Cosa aspettarti:** niente di niente: nessuna persona in lista, nessuna proposta (a meno del punto 5), nessun testo. Accendi **Registra da solo**: anche così nessuno entra in lista.
    - **Cosa riportare:** qualunque persona comparsa da sola.
- **R4b2.5 · Profili Total RP 3.** Con Total RP 3 installato, consenso ai profili degli altri acceso (`/au who trp3 on` o il pannello delle impostazioni) e il profilo di un'altra persona **non in lista** nel registro di TRP3, passale vicino con l'opzione accesa.
    - **Cosa aspettarti:** la persona compare in **Persone incontrate** come proposta («vicino a te (profilo Total RP 3)»); **non** entra in lista; sparisce alla prossima sessione. Senza consenso, nulla.
    - **Cosa riportare:** se compare, e se `UnitFullName` funziona sull'unità della nameplate.
- **R4b2.6 · Identità segrete.** Dove il gioco nasconde i nomi (istanze con restrizioni, se ne trovi una), con l'opzione accesa.
    - **Cosa aspettarti:** nessuna frase, nessun errore Lua; `/au debug` conta le identità segrete (**secret**) senza nomi.
    - **Cosa riportare:** gli errori, se ce ne sono, e dove.
- **R4b2.7 · Il limite.** Passa tra molte persone **in lista** (se ne hai più di una).
    - **Cosa aspettarti:** al massimo una proposta al minuto e dieci per sessione; chi è già stato riconosciuto non pesa. Dopo `/reload` si riparte da zero.
    - **Cosa riportare:** se una pausa di 60 secondi ti sembra troppo corta o troppo lunga.
- **R4b2.8 · Lista condivisa: accendere.** Nella finestra premi **Condividi con l'account** (oppure `/au relationships share on`).
    - **Cosa aspettarti:** un **avviso** (privacy e gioco di ruolo) in una finestra di conferma e nella finestra delle relazioni; il pulsante dice "spento, leggi prima" e poi "spento, conferma"; solo il secondo clic dopo qualche secondo (entro 30) la accende. La finestra entra nello schermo con tre righe di opzioni.
    - **Cosa riportare:** testo dell'avviso se si taglia o si sovrappone.
- **R4b2.9 · Condividere.** Con il personaggio A aggiungi una persona e scrivi una nota; poi `/au relationships share all` per le persone che A aveva già. Esci e entra con il personaggio B (stesso account).
    - **Cosa aspettarti:** B vede le persone e le **scelte** di A (nota, assi, sentimenti) ma **non** gli incontri di A; il primo incontro di B con la persona crea i suoi. Una modifica fatta da B compare in A dopo il cambio di personaggio.
    - **Cosa riportare:** se i dati dell'account si salvano e si ricaricano tra i personaggi (`AzerothUnspokenDB.lua`).
- **R4b2.10 · Il pulsante delle scelte.** Nella scheda di una persona premi **Scelte: condivise** / **Scelte: questo personaggio**.
    - **Cosa aspettarti:** «questo personaggio» tiene una copia delle scelte e smette di seguire quelle condivise; «condivise» le rimette nell'account (sostituendo quelle che c'erano). Con la lista condivisa spenta il pulsante non c'è.
    - **Cosa riportare:** se il pulsante entra nella finestra e il testo è chiaro.
- **R4b2.11 · Spegnere senza perdere nulla.** `/au relationships share copy`, poi `/au relationships share off`, poi `/reload`.
    - **Cosa aspettarti:** il personaggio tiene le sue scelte; il file dell'account conserva la lista (`sharedPlayers`); con `share on` due volte torna com'era. `/au relationships reset shared` la cancella (con conferma).
    - **Cosa riportare:** qualunque dato perso.

---

## R3a: varietà della scelta (aggiunto dalle issue #89, #90 e #91)

**A cosa serve.** Il narratore ora preferisce le frasi del luogo dove ci sono, non torna subito sullo stesso tema, sulla stessa immagine o sulla stessa voce, cambia il gesto delle emote e non lascia che i combattimenti occupino più di circa quattro frasi su dieci. Tutto è misurato fuori dal gioco con una sessione simulata; qui si verifica che nel gioco vero il ritmo sia piacevole. Bastano un'ora di gioco normale (missioni e combattimenti) e `/au prof`.

- **R3a.1 · Un'ora di gioco.** Gioca un'ora senza toccare le impostazioni, poi scrivi `/au prof`.
    - **Cosa aspettarti:** tra i motivi di silenzio compare `quota:combat` alcune volte; morte, ritorno in vita e livello parlano sempre; arrivando in una zona nuova a volte parla l'esplorazione.
    - **Cosa riportare:** le righe di `/au prof` sulle categorie e i motivi; se il narratore ti è sembrato troppo muto o troppo loquace nei combattimenti.
- **R3a.2 · Frasi del luogo.** Entra in Elwynn Forest (o in una zona della tua regione con frasi proprie) e chiedi `/au muse` o aspetta l'arrivo.
    - **Cosa aspettarti:** le prime frasi parlano del luogo; dopo qualche richiesta tornano anche quelle generali.
    - **Cosa riportare:** le frasi viste e se suonano giuste per il posto.
- **R3a.3 · Le emote.** Con `/au mode confirm` e molte emote nel narratore, guarda i gesti prima delle frasi tra virgolette.
    - **Cosa aspettarti:** gesti diversi e adatti al tono; «dice:» e «mormora:» rari.
    - **Cosa riportare:** un gesto che stona con la frase (copia il testo).
## R3b: il mondo che il client racconta (aggiunto dalle issue #92, #93, #94, #95 e #121)

**A cosa serve.** Il narratore ora legge meteo, giorno e notte, sottozona, missioni, reputazione, riposo e volo. **Nessuna di queste API è mai stata provata nel client**: l'addon le legge sempre con una protezione e, se non rispondono, tace su quell'argomento. Questa prova dice se rispondono davvero, e con quali valori. Prima esegui `/au probe` (sezione R0) e tieni il risultato: i valori veri del meteo, `DIEL_CYCLE_CHANGED`, le missioni, la reputazione e il volo sono lì. La riga **World** di `/au debug` mostra ciò che l'addon legge adesso (meteo, giorno, riposo, missioni, volo, punti di riferimento).

- **R3b.1 · Il meteo.** Con `/au probe` sotto la pioggia, sotto la neve e a cielo sereno (per esempio Dun Morogh o Durotar, secondo il tempo che trovi) guarda `C_Weather.GetCurrentWeather` ed `Enum.WeatherType`. Poi `/au debug` e leggi **World: weather ...**.
    - **Cosa aspettarti:** `rain` sotto la pioggia, `snow` sotto la neve, `clear` a cielo sereno. Se vedi `unknown` con il tempo visibilmente cambiato, i nomi dei valori di `Enum.WeatherType` non sono quelli previsti: riportali.
    - **Cosa riportare:** il valore di `type` e di `intensity` nei tre casi, i nomi di `Enum.WeatherType`, e che cosa mostra `/au debug`.
- **R3b.2 · Il meteo cambia.** `/au chance weather_change 100`. Resta in un posto aperto finché il tempo cambia (o cambia zona con un altro meteo).
    - **Cosa aspettarti:** dopo qualche secondo una frase del narratore sul nuovo tempo (pioggia che comincia, neve, cielo che si schiarisce), **non** nei primi secondi dopo una schermata di caricamento (parla la zona, e la frase di zona nomina il tempo che trovi) e mai in combattimento. Un temporale che va e viene in pochi secondi non fa frasi.
    - **Cosa riportare:** `WEATHER_CHANGED` arriva? quante volte? la frase, e se nomina un tempo diverso da quello che vedi.
- **R3b.3 · Giorno e notte.** `/au chance dawn 100` e `/au chance dusk 100`. Aspetta un'alba e un tramonto (o guarda l'ora con `/au probe`).
    - **Cosa aspettarti:** una frase all'alba e una al tramonto, **una sola** per passaggio. In `/au probe`, `C_DateAndTime.IsDayTime` cambia nello stesso momento di `DIEL_CYCLE_CHANGED`.
    - **Cosa riportare:** a che ora del gioco arriva `DIEL_CYCLE_CHANGED` all'alba e al tramonto, e se `IsDayTime` cambia insieme. Le ore di alba e tramonto dell'addon (due ore dopo e prima del passaggio) vanno bene o sono troppe?
- **R3b.4 · Le sottozone.** `/au chance subzone_enter 100` e `/au chance landmark 100`. Cammina in un villaggio (per esempio Goldshire e la locanda Lion's Pride Inn, o Razor Hill) e vai avanti e indietro lungo un confine.
    - **Cosa aspettarti:** una frase entrando in una sottozona nuova; nessuna frase se esci e rientri nella stessa entro dieci minuti; **una sola** frase se il confine «sfarfalla». Per un luogo con un nome noto, la frase parla del luogo (locanda, villaggio, cimitero...) e mostra il nome che dà il client.
    - **Cosa riportare:** `ZONE_CHANGED` e `ZONE_CHANGED_INDOORS` arrivano? con `/au place` confronta il nome della sottozona con `Data/Landmarks.lua`: elenca i nomi che **non** coincidono. Controlla anche `/au packs`: i caricamenti di pacchetti **non** devono salire cambiando sottozona (solo il continente li fa salire).
- **R3b.5 · Le missioni.** Accetta una missione, completa un obiettivo, completala del tutto, consegnala. Poi abbandonane una e riprendila tre volte, e consegnala.
    - **Cosa aspettarti:** una frase quando un obiettivo si completa e quando la missione è pronta (non a ogni uccisione); una frase alla consegna; dopo i tentativi ripetuti (tre accettazioni nella stessa sessione), una frase più sollevata. Nessun testo della missione in nessuna frase, e nessun dato di missione nei file salvati.
    - **Cosa riportare:** gli argomenti di `QUEST_ACCEPTED` e `QUEST_TURNED_IN` (con `/au probe`), se `QUEST_LOG_UPDATE` arriva a raffica, e se le frasi compaiono al momento giusto.
- **R3b.6 · La reputazione.** Guadagna reputazione fino a cambiare livello (per esempio da Neutrale ad Amichevole). Perdila, se puoi, fino a scendere.
    - **Cosa aspettarti:** una frase al cambio di livello (e a quello di sola discesa); nessuna frase per i punti guadagnati dentro lo stesso livello. Nessun nome di fazione nella frase.
    - **Cosa riportare:** `FactionData.reaction` per il livello (da 1 a 8? con `/au probe`), `UPDATE_FACTION` quanto spesso arriva, e le frasi.
- **R3b.7 · La locanda.** `/au chance rest_enter 100`. Entra in una locanda (compare l'icona di riposo).
    - **Cosa aspettarti:** una frase entrando; **nessuna** frase se accedi già dentro la locanda o dopo una schermata di caricamento in città. In una locanda la frase parla di un luogo al chiuso, in città di strade.
    - **Cosa riportare:** `PLAYER_UPDATE_RESTING` arriva? quante volte? la frase, e se `IsIndoors` è vero nella locanda.
- **R3b.8 · Il volo.** `/au chance journey 100`. Fai un volo (grifone, viverna...): parti, aspetta, arriva. Poi fatti spaventare o stordire da un mostro **fuori** da un volo.
    - **Cosa aspettarti:** una frase alla partenza e una all'arrivo (più sollevata se il volo è stato lungo, due minuti o più); **nessuna** frase per la paura o lo stordimento. Un volo che attraversa più zone non finisce a metà strada.
    - **Cosa riportare:** l'ordine degli eventi (`PLAYER_CONTROL_LOST`, `UnitOnTaxi`, `PLAYER_CONTROL_GAINED`) con `/au probe` e `/au debug` durante il volo, e se `UnitOnTaxi` è vero per tutto il volo.
- **R3b.9 · Il silenzio.** In combattimento, con il narratore in pausa o a intensità 0, e con il modulo **Mondo** spento (pannello delle impostazioni).
    - **Cosa aspettarti:** nessuna di queste frasi in combattimento; nessuna a intensità 0; con il modulo Mondo spento, nessuna frase di meteo, alba, tramonto, sottozona, luogo o volo (restano missioni, reputazione e riposo, che sono personali).
    - **Cosa riportare:** qualsiasi frase che esce quando non dovrebbe.

---

## R4: personalità a intensità ed emozioni (aggiunto dalle issue #96, #97 e #98)

Prova con un personaggio che aveva già scelto una personalità prima di questa versione, se ne hai uno.

- **R4.1 · La conversione del profilo.** Entra con un personaggio che aveva un archetipo o dei tratti scelti. Scrivi `/au soul list`.
    - **Cosa aspettarti:** i tratti sono diventati intensità da 0 a 100 che dicono la stessa cosa (uno stoico ha stoicismo 80, un devoto spiritualità 90...); l'ironia, la curiosità, la voce interiore, gli argomenti da evitare e il consenso a Total RP 3 sono rimasti. Nessun errore in `/au debug`.
    - **Cosa riportare:** il riepilogo, e se qualcosa che avevi scelto è andato perso.
- **R4.2 · I cursori.** `/au soul`. Trascina il cursore di due tratti, poi premi la **x** di uno. Cambia archetipo con il pulsante in alto.
    - **Cosa aspettarti:** il valore cambia mentre trascini e si salva quando lasci il cursore; i tratti a due poli dicono il lato (cinico, equilibrio, idealista...); con la x il tratto torna «non impostato». Dopo una modifica l'archetipo appare come «personalizzato (da ...)». La finestra entra nello schermo e i cursori si possono prendere bene.
    - **Cosa riportare:** se il cursore segue il mouse alla tua scala dell'interfaccia (______), se la finestra esce dallo schermo, e i testi tagliati.
- **R4.3 · L'umore dopo una morte.** `/au chance memory_return 100`. Muori in una zona, rinasci, esci dalla zona e rientraci dopo almeno dieci minuti. Poi scrivi `/au emotion` e `/au debug`.
    - **Cosa aspettarti:** dopo la morte `/au emotion` mostra un umore preoccupato o malinconico, con «last cause death»; al ritorno la frase di richiamo **non** è allegra né scherzosa (niente «Ciao, alberi!»): parla con cautela, con determinazione o con amarezza. La riga **Emotion** di `/au debug` mostra le stesse emozioni.
    - **Cosa riportare:** le frasi del ritorno, e l'umore mostrato da `/au emotion` dopo la morte, al ritorno e dopo mezz'ora.
- **R4.4 · La locanda e il tempo che passa.** Dopo la prova R4.3, entra in una locanda (`/au chance rest_enter 100`). Poi esci dal gioco e rientra dopo un'ora o più.
    - **Cosa aspettarti:** alla locanda la tensione scende e l'umore diventa sereno; al nuovo accesso le emozioni veloci sono sparite e restano solo quelle lente (malinconia, nostalgia...), più deboli. Nel file salvato del personaggio (`AzerothUnspokenCharacterDB.lua`, sezione `emotion`) ci sono solo numeri e un orario, nessun testo.
    - **Cosa riportare:** `/au emotion` prima e dopo, e la sezione `emotion` del file salvato.
- **R4.5 · Il carattere cambia l'umore.** Scegli l'archetipo `scholar` (molto stoico) e ripeti una morte; poi l'archetipo `avenger` (vendicativo) e ripetila.
    - **Cosa aspettarti:** lo stoico si agita meno (valori più bassi in `/au emotion`); il vendicativo si arrabbia di più (furious più alto) e può avere frasi più dure.
    - **Cosa riportare:** i valori di `/au emotion` nei due casi.
- **R4.6 · Spegnere le emozioni.** `/au emotion off` (o il modulo **Emozioni** nel pannello). Ripeti una morte e un ritorno.
    - **Cosa aspettarti:** `/au emotion` dice «off», `/au debug` mostra «Emotion: off», il narratore funziona come prima e nella sezione `emotion` del file salvato non resta nulla. `/au emotion on` le riaccende.
    - **Cosa riportare:** qualsiasi frase che sembra legata all'umore mentre le emozioni sono spente.

---

## R3c: monologhi e situazioni composte (aggiunto dalle issue #99 e #100)

Nessuna API nuova: si prova come suonano le frasi e se i tempi delle situazioni corrispondono ai combattimenti veri. `/au prof` conta i monologhi e le situazioni composte della sessione.

- **R3c.1 · Un monologo della voce interiore.** Fuori dal combattimento premi il tasto «pronuncia» (o `/au speak`) una decina di volte, a qualche minuto di distanza.
    - **Cosa aspettarti:** ogni tanto, non spesso, nel narratore compare un pensiero di due o tre frasi intere che si seguono (la strada, una vecchia cicatrice, le stelle di notte). Una sola voce del narratore, mai in chat, nemmeno con l'invio automatico. Le frasi non sono tagliate e si leggono come un pensiero solo.
    - **Cosa riportare:** i monologhi visti, se qualche combinazione di frasi stona, e se la voce occupa troppo spazio nella finestra del narratore.
- **R3c.2 · Un monologo del narratore.** `/au chance zone 100`. Entra in alcune zone nuove, una anche al tramonto.
    - **Cosa aspettarti:** a volte la riga comincia con il nome del personaggio e un gesto («Garrosh si ferma in cima alla salita...») e continua con una o due frasi descrittive. Al tramonto può arrivare quello della luce che cala.
    - **Cosa riportare:** il testo, e se il nome e la prima frase si leggono bene insieme.
- **R3c.3 · Una vittoria di misura.** `/au chance victory 100` e `/au chance lowhp 100`. Fai un combattimento in cui scendi sotto un terzo della salute e vincilo entro mezzo minuto. Poi `/au debug` e `/au prof`.
    - **Cosa aspettarti:** la frase della vittoria parla di averla scampata per poco («Ancora in piedi...»), non è una vittoria qualsiasi. Una sola frase per la vittoria. `/au prof` mostra «composite situations 1 (close_call 1)». Se le due frasi arrivano nello stesso momento, `/au debug` mostra `lowhp=merged`.
    - **Cosa riportare:** la frase, quanto tempo è passato tra la salute bassa e la vittoria, e se la frase è arrivata (se no, se mezzo minuto è troppo poco).
- **R3c.4 · Un livello sudato.** Sali di livello entro tre minuti da una morte o da un combattimento con la salute bassa.
    - **Cosa aspettarti:** la frase del livello parla del prezzo pagato («Ecco quanto è costato...»), non è un livello qualsiasi.
    - **Cosa riportare:** la frase, e se dopo una morte la situazione è stata riconosciuta.
- **R3c.5 · Un ritorno sotto la pioggia al tramonto.** Serve il meteo della prova R3b. `/au chance memory_return 100`. Torna in una zona già visitata mentre piove, al tramonto o di notte.
    - **Cosa aspettarti:** la frase del ritorno parla della pioggia e della luce che se ne va. Con il cielo sereno o di giorno non arriva mai.
    - **Cosa riportare:** la frase, il meteo letto (`/au debug`) e l'ora del gioco.

---

## U-wizard: consensi, guida del primo avvio e finestre (aggiunto dalle issue #178, #188 e #181)

Nessuna API nuova, ma tutto ciò che il giocatore vede e clicca: finora è stato provato solo con il client finto. Servono due personaggi (uno nuovo, per vedere il primo avvio) e, per i passi con Total RP 3, Total RP 3 installato. Per rifare il primo avvio: `/au wizard`.

- **U1 · La guida si apre al momento giusto.** Con un personaggio che non ha mai visto la guida, entra in gioco. Ripeti entrando **in combattimento** (se riesci: attacca un animale appena entrato, oppure fai `/reload` durante un combattimento).
    - **Cosa aspettarti:** la guida compare dopo qualche secondo dalla fine del caricamento, **mai durante la schermata di caricamento**. Se sei in combattimento aspetta che finisca. Compare una sola volta.
    - **Cosa riportare:** quando è comparsa; se è comparsa in combattimento o sotto la schermata di caricamento.
- **U2 · La prima pagina.** Guarda la pagina 1.
    - **Cosa aspettarti:** «Benvenuto, viandante» (o «Welcome, traveller»), una frase che dice che il narratore è **privato** e nulla arriva in chat se non lo scegli tu, un **esempio del narratore** con il tuo nome, le **carte** delle lingue (la scelta ha il bordo dorato e un quadratino pieno). Nei punti in basso: i puntini di avanzamento, «step 1 of 7». Cambia lingua con una carta: tutta la pagina cambia lingua subito.
    - **Cosa riportare:** testi tagliati o sovrapposti, la guida in inglese e in italiano (screenshot).
- **U3 · Saltare.** Prova ogni modo: **Salta - tieni i valori predefiniti**, la **x** in alto, il tasto **Esc**, e **Invio** (deve valere «Avanti»). Fallo in punti diversi (pagina 1, pagina 4, ultima).
    - **Cosa aspettarti:** Salta, x ed Esc chiudono la guida, restano le scelte già fatte e il resto resta predefinito; non torna al prossimo accesso. Invio passa alla pagina dopo. Gli altri tasti (muoverti con WASD) **non** sono bloccati mentre la guida è aperta.
    - **Cosa riportare:** se Esc apre invece il menu di gioco; se i tasti di movimento smettono di funzionare con la guida aperta (errore grave).
- **U4 · Cosa può arrivare in chat.** Vai al passo della chat. Clicca **automatica (dove permesso)**.
    - **Cosa aspettarti:** la carta dice che le emote e `/say` nelle istanze partono da sole **a nome del personaggio, visibili a chi è vicino**; il clic **non** la accende: compare una **finestra di conferma** con l'avviso intero, **Attiva** e **Annulla**. **Attiva** è **disattivato per i primi 2 secondi**. Prova a cliccare due volte di seguito molto in fretta sulla carta o su **Attiva**: non deve accendersi. Dopo la pausa **Attiva** funziona; **Annulla** (o Esc) lascia tutto com'era.
    - **Cosa riportare:** se la finestra compare **sopra** la guida (deve), se **Attiva** è davvero spento all'inizio, se un doppio clic la accende (errore grave), lo screenshot.
- **U5 · Prova del narratore.** Nello stesso passo premi **Prova il narratore**.
    - **Cosa aspettarti:** il riquadro del narratore mostra la frase di prova **per intero e sopra la guida**, **non** coperto da essa: si sposta sotto (o sopra) la guida. Se chiudi la guida torna al suo posto.
    - **Cosa riportare:** se la frase si vede tutta; dove si è messo il riquadro; se dopo la chiusura è tornato dove lo avevi messo (e se il tuo posto è stato cambiato).
- **U6 · L'ultima pagina.** Vai all'ultima pagina.
    - **Cosa aspettarti:** i **quattro tasti** (pronuncia, pausa, un'altra frase, NPC) spiegati, la frase «nessun tasto è assegnato finché non lo scegli tu», dove sta il pulsante «pronuncia» (accanto al riquadro del narratore), `/au options`, `/au help`, `/au wizard`, e **i valori predefiniti** (intensità 50, 45 s tra le frasi, una proposta aspetta 25 s, chat privata, pulsante acceso, Total RP 3 degli altri spento, prossimità spenta, lista condivisa spenta). Il pulsante **Apri i tasti** apre le combinazioni tasti (o dice dove sono); **Apri le impostazioni** apre il pannello.
    - **Cosa riportare:** se i valori predefiniti scritti corrispondono a quelli veri (`/au options`); se i due pulsanti funzionano.
- **U7 · Total RP 3 degli altri.** Con Total RP 3 installato (passo «Total RP 3» della guida, oppure la riga **Total RP 3 degli altri** del pannello `/au options`). Clicca la carta/riga.
    - **Cosa aspettarti:** il primo clic mostra la finestra con l'avviso (solo razza, classe e tratti, mai note o storia); la riga dice «spento, leggi prima» e poi «spento, conferma»; un doppio clic non lo accende; con **Attiva** dopo la pausa si accende. Se **Nome da Total RP 3** è spento, la riga dice **«acceso, serve nome»** e sotto il pannello una riga lo spiega. Spegnerlo è un clic solo.
    - **Cosa riportare:** il testo della riga (tagliato? sovrapposto?) in italiano e in inglese.
- **U8 · Lista condivisa e prossimità.** Apri `/au relationships`, scheda **Opzioni**. Clicca **Condividi con l'account**, poi **Riconosci chi è vicino**.
    - **Cosa aspettarti:** per ciascuno compare la finestra di conferma con l'avviso e, nella finestra delle relazioni, lo stesso avviso sotto la nota sulla privacy, in carattere normale (non minuscolo). Il pulsante dice «spento, leggi prima», poi «spento, conferma». Un doppio clic non accende nulla; dopo la pausa sì. Spegnere è un clic solo e non cancella nulla.
    - **Cosa riportare:** testi tagliati; se la riga sotto le opzioni che spiega i due consensi si legge.
- **U9 · I comandi.** `/au mode auto`, `/au relationships share on`, `/au relationships proximity on`, `/au who trp3 on`, ciascuno **due volte**: la seconda subito, la terza dopo qualche secondo.
    - **Cosa aspettarti:** la prima volta l'avviso (finestra di conferma o testo in chat) e «ripeti dopo qualche secondo»; la seconda subito: «nulla è cambiato, leggi prima»; la terza, dopo una pausa e **entro 30 secondi**, accende. Passati 30 secondi la domanda decade.
    - **Cosa riportare:** se il comando funziona senza finestra di conferma (testo in chat) o con.
- **U10 · Le finestre non coprono il narratore.** Fai comparire una proposta (`/au mode confirm`, poi il tasto o il pulsante «pronuncia» finché ne appare una). Apri una dopo l'altra: il diario (`/au journal`), le relazioni (`/au relationships`), l'anima (`/au soul`), la guida (`/au wizard`).
    - **Cosa aspettarti:** con la proposta in attesa il riquadro del narratore **non resta sotto** nessuna finestra: o si sposta sotto/sopra la finestra, o, se la finestra è troppo grande per lo schermo (relazioni e anima a 768 di altezza), resta **sopra** di essa con la barra **Invia / Modifica / Scarta** raggiungibile. Chiuse le finestre, torna dove lo hai messo (`/au narrator reset` non serve).
    - **Cosa riportare:** per ogni finestra: coperto? spostato? sopra? la risoluzione e la scala dell'interfaccia.
- **U11 · Le finestre si alzano.** Apri il diario e da lì, con il pulsante «...», le relazioni. Clicca sul diario dietro, poi sulle relazioni, poi sull'anima (`/au soul`).
    - **Cosa aspettarti:** la finestra cliccata va **davanti** alle altre; la seconda finestra **non** si apre esattamente sopra la prima (è spostata in basso a destra) e i loro pulsanti non si mescolano. Una finestra che hai spostato tu resta dove l'hai messa.
    - **Cosa riportare:** se una finestra resta dietro un'altra dopo il clic; se una finestra compare **sopra** la finestra di conferma dei consensi (non deve).
- **U12 · Il dialogo ambientale.** Apri un dialogo con un NPC (`/au talk` o il pulsante) mentre il narratore mostra una frase.
    - **Cosa aspettarti:** la finestra del dialogo non copre il riquadro del narratore.
    - **Cosa riportare:** se si sovrappongono.

---

## U-narrator-look: l'aspetto del narratore (aggiunto dalle issue #186, #174 e #182)

Solo aspetto e clic, nessuna API nuova; provato solo con il client finto. Serve `/au mode confirm` per le proposte.

- **N1 · Le quattro voci.** Fai comparire una frase per voce: `/au narrator` (narratore o voce interiore), `/au greet`
  (personaggio), `/au talk` vicino a un locandiere (NPC).
    - **Cosa aspettarti:** a sinistra del riquadro una **barra sottile** nel colore della voce; il testo **tinto** di quel
      colore (molto chiaro); la voce interiore in un **carattere diverso** (più stretto). Personaggio (oro chiaro) e NPC
      (verde più scuro) si distinguono anche guardando lo screenshot in bianco e nero.
    - **Cosa riportare:** screenshot delle quattro voci; se il carattere della voce interiore **non** cambia (il client
      non ha `Fonts\ARIALN.TTF`) o il testo sparisce.
- **N2 · I pulsanti in alto.** Guarda i tre pulsanti in alto a destra, poi passaci sopra con il mouse.
    - **Cosa aspettarti:** tre icone grigie senza riquadro (due barre, tre righe, una x) che si illuminano al passaggio;
      sono più grandi di prima e un po' distanti. In pausa la prima diventa un triangolo.
    - **Cosa riportare:** icone storte, sfocate o tagliate; se è facile premere quella sbagliata.
- **N3 · La x non scarta più.** Con una proposta in attesa premi la **x**. Poi premi il tasto «pronuncia» due volte.
    - **Cosa aspettarti:** la x nasconde il riquadro; la proposta **resta**. Al primo tasto ricompare (nulla in chat); al
      secondo parte. Anche una nuova frase la fa ricomparire.
    - **Cosa riportare:** se qualcosa parte in chat senza essere sullo schermo (errore grave).
- **N4 · La barra della proposta.** Guarda la barra in inglese e in italiano (`/au lang it`). Clicca il canale.
    - **Cosa aspettarti:** tutto sta in una riga senza toccarsi; **Invia** è l'unico dorato e, se hai assegnato il tasto
      «pronuncia», lo mostra; **Scarta** è solo testo; il canale cambia al clic.
    - **Cosa riportare:** testi tagliati o sovrapposti (screenshot).
- **N5 · La linea del tempo.** Fai comparire una frase e guarda il bordo in basso.
    - **Cosa aspettarti:** una linea sottile nel colore della voce si accorcia; quando finisce il riquadro sparisce, senza
      dissolvenza. Con «Riduci il movimento» acceso la linea non c'è.
- **N6 · Testo grande.** `/au options`, **Dimensione del testo** a 28.
    - **Cosa aspettarti:** la scritta in alto non finisce sotto i pulsanti e non tocca la frase; la striscia in alto
      cresce.
    - **Cosa riportare:** screenshot a 10, 14 e 28.
- **N7 · La cronologia.** Apri la cronologia (pulsante a tre righe). Premi **Esc**. Riaprila, trascinala dalla striscia
  in alto (i puntini), poi lascia che il riquadro sparisca.
    - **Cosa aspettarti:** stesso fondo scuro del riquadro, testo grande come quello del narratore; Esc la chiude (e non
      apre il menu di gioco); la sua **x** la chiude. Prima di trascinarla sta sopra il riquadro e sparisce con lui; dopo,
      resta dove l'hai messa anche quando il riquadro sparisce, e anche dopo `/reload`. `/au narrator reset` la riporta
      sopra il riquadro.
    - **Cosa riportare:** se Esc apre il menu di gioco; se dopo il trascinamento torna al vecchio posto.

## U-windows: una sola cornice per le finestre, Esc e la scala (aggiunto dalle issue #174, #187, #182, #192 e #190)

Solo aspetto e clic; l'unica API nuova è `UISpecialFrames` (la tabella delle finestre che Esc chiude). Provato solo con il
client finto.

- **W1 · Esc e la x.** Apri, una per volta, il diario (`/au journal`), l'esportazione (**Esporta** nel diario), le
  relazioni (`/au relationships`), l'anima (`/au soul`) e la guida (`/au wizard`). Chiudi ciascuna con **Esc**, poi
  riaprila e chiudila con la **X** in alto a destra.
    - **Cosa aspettarti:** Esc chiude la finestra e **non** apre il menu di gioco; sulla guida Esc fa come «Salta» (in chat
      il messaggio di fine, e non torna al prossimo accesso). Con un dialogo ambientale aperto (`/au talk`) Esc **non**
      lo chiude.
    - **Cosa riportare:** una finestra che Esc non chiude, o il menu di gioco che si apre sopra.
- **W2 · La cornice.** Guarda le cinque finestre.
    - **Cosa aspettarti:** fondo scuro caldo, un bordo sottile color bronzo, una fascia del titolo più scura con il titolo
      in oro, la X in alto a destra; nessuna grafica di Blizzard. La scheda scelta ha il bordo oro pieno e una barra sotto
      il nome; «Dimentica tutto», «Rimuovi la persona», «Dimentica le osservazioni» e «Profilo neutro» hanno il bordo
      rosso.
    - **Cosa riportare:** bordi mancanti o spessi, testi che escono dai pulsanti (screenshot).
- **W3 · Scala delle finestre.** `/au options`, sezione **Generale**, **Scala delle finestre** a 80% e a 150%, con il
  diario aperto e con un dialogo ambientale aperto.
    - **Cosa aspettarti:** le finestre aperte cambiano dimensione subito; restano dentro lo schermo; il riquadro del
      narratore non cambia.
    - **Cosa riportare:** una finestra che a 150% esce dallo schermo a 768 di altezza, o che dopo il trascinamento salta.
- **W4 · Il pannello delle impostazioni.** `/au options` nel client classico e, se c'è, nel pannello nuovo.
    - **Cosa aspettarti:** si apre sulla pagina dell'addon al primo comando; cinque sezioni con i titoli (Generale, Chat,
      Narratore, Moduli, Privacy) che scorrono; ogni riga ha il nome a sinistra e il controllo a destra; la rotella e la
      barra fanno scorrere fino al testo d'aiuto in fondo.
    - **Cosa riportare:** se la pagina si apre vuota o su un altro addon; se non scorre; screenshot in alto e in fondo.
- **W5 · Dialogo ambientale grande.** In **Narratore**, **Testo dei dialoghi NPC** a 24 e **Opacità dei dialoghi NPC**
  al 50%, poi `/au talk` vicino a un locandiere.
    - **Cosa aspettarti:** il nome, la battuta e le risposte uno sotto l'altro, senza sovrapporsi; lo sfondo più
      trasparente.
- **W6 · Profilo neutro.** In `/au soul` scegli un archetipo, poi premi **Profilo neutro** una volta, aspetta 10
  secondi; premilo due volte; premilo una volta e chiudi la finestra.
    - **Cosa aspettarti:** il primo clic lo riempie di rosso e dice «Clicca ancora: profilo neutro», senza cambiare nulla;
      dopo qualche secondo torna com'era; due clic tolgono ogni scelta; chiudere la finestra annulla.
- **W7 · Esportazione lunga.** Con molti ricordi, **Esporta** nel diario.
    - **Cosa aspettarti:** il testo scorre fino all'ultima riga; Ctrl+C copia tutto; con un testo corto non c'è spazio
      vuoto da scorrere.

## U-keyboard-combat: tastiera, puntatore e combattimento (aggiunto dalle issue #183 e #185)

Tasti, cursori, pulsanti e il comportamento in combattimento. Nessuna API nuova: gli eventi di inizio e fine scontro
(`PLAYER_REGEN_DISABLED`/`ENABLED`) erano già usati. Provato solo con il client finto.

- **K1 · I tasti nuovi.** *Opzioni > Tasti > AddOn > Azeroth Unspoken*: assegna Scarta, Modifica, Canale successivo,
  Cronologia, Diario e Dialogo NPC: risposta 1-3. Con una proposta in attesa (`/au mode confirm`, poi `/au greet`) premi
  Canale successivo, poi Modifica, poi Esc, poi Scarta. Premi Cronologia e Diario due volte. Con `/au talk` vicino a un
  locandiere premi Risposta 1.
    - **Cosa aspettarti:** dodici azioni nella lista, con i nomi nella lingua del client; ogni tasto fa ciò che fa il
      pulsante (il canale cambia sulla targhetta e in chat compare «canale della proposta: ...»); le risposte sono
      numerate 1., 2., 3. e il tasto sceglie quella col suo numero.
    - **Cosa riportare:** un'azione che manca, un tasto che non fa nulla, un errore rosso.
- **K2 · I cursori dell'anima.** `/au soul`: per un tratto clicca **-** e **+**, poi gira la rotella sopra la barra.
    - **Cosa aspettarti:** il valore cambia di 5 a ogni passo e resta dopo la chiusura; la barra si distingue bene dal
      fondo; trascinare funziona come prima.
    - **Cosa riportare:** la rotella che fa scorrere altro invece del cursore, una barra poco visibile (screenshot).
- **K3 · Pulsanti e parole.** Guarda il diario (ricordi, storie), le relazioni (elenco, persone) e il dialogo NPC.
    - **Cosa aspettarti:** le azioni delle righe sono parole brevi (Tieni, Elimina, Apri, Pausa, Salta...) e non escono
      dal pulsante, anche in italiano; nessun pulsante più piccolo di un'icona d'azione piccola; il dialogo NPC ha
      «Chiudi» in alto.
    - **Cosa riportare:** parole tagliate o che coprono il testo della riga (screenshot).
- **K4 · In pausa.** `/au pause`.
    - **Cosa aspettarti:** sotto il pulsante «pronuncia» compare **In pausa**, ben leggibile anche se il pulsante è
      spento; `/au pause` di nuovo lo toglie.
- **C1 · Uno scontro qualsiasi.** Con le impostazioni predefinite (**In combattimento: trattieni fino alla fine**)
  combatti contro un mostro normale per una ventina di secondi.
    - **Cosa aspettarti:** nessuna frase nel riquadro durante lo scontro; mezzo secondo dopo la fine, la frase della
      vittoria (se c'è) e poi quelle trattenute, una dopo l'altra (al massimo tre).
    - **Cosa riportare:** una frase che compare in combattimento, o nessuna dopo molti scontri.
- **C2 · Le altre scelte.** `/au combat chat`, poi `/au combat show`, poi `/au combat silent`, uno scontro per ciascuna.
    - **Cosa aspettarti:** *chat*: le frasi nella finestra della chat, visibili solo a te, e il riquadro resta via;
      *show*: come prima; *silent*: nulla durante lo scontro.
- **C3 · Proposte e editor in combattimento.** `/au mode preview`, poi `/au greet` e premi il tasto «pronuncia» per
  aprire l'editor; scrivi qualcosa e lasciati attaccare.
    - **Cosa aspettarti:** all'inizio dello scontro l'editor si chiude e i tasti tornano a muovere il personaggio; il
      riquadro sparisce; alla fine la proposta torna con il tuo testo. In combattimento il tasto «pronuncia» senza
      proposta non inventa una frase e lo dice in chat.
    - **Cosa riportare:** un editor che resta aperto o tiene la tastiera in combattimento (molto importante).
- **C4 · Invio automatico bloccato (facoltativo, SP-05 E).** Con l'invio automatico acceso, se il client blocca un invio
  (il messaggio di Blizzard «azione bloccata»).
    - **Cosa aspettarti:** in chat «il client ha bloccato un invio automatico...»; da lì in poi ogni frase aspetta la
      conferma e il messaggio di Blizzard non torna; la riga **Invio automatico** dice «acceso, trattenuto»; dopo
      `/reload` torna automatico.
    - **Cosa riportare:** il messaggio di Blizzard che torna una seconda volta nella stessa sessione.

---

## N0: attacchi, uccisioni e morti senza il registro di combattimento (aggiunto dall'issue #212)

**A cosa serve.** Le relazioni con gli NPC (milestone 9) devono sapere quando attacchi un NPC, quando lo uccidi o lui uccide te, e chi ha visto: ostilità e tradimento (N1), la nemesi (N7) e il compagno animale (N8). Forever **non dà agli addon il registro di combattimento**, quindi l'addon deve indovinare da eventi e funzioni comuni. Nessuno sa ancora quali rispondono su Forever, in che ordine e con quali falsi allarmi. Questi passi lo dicono; le risposte confermano o cambiano la ricetta di [ADR 0035](adr/0035-attacks-kills-and-deaths-without-the-combat-log.md) (proposta, da confermare in gioco). Provato solo con il client finto.

**Come funziona.** `/au probe` (sezione R0) ha nuove righe:
- lette sul tuo **bersaglio** quando scrivi il comando: `UnitThreatSituation(player, target)`, `UnitIsDead`, `UnitIsTapDenied`, `UnitClassification`, `UnitIsQuestBoss`, `UnitCreatureType`, `UnitFactionGroup`, `UnitGUID(target) npcID`, `CheckInteractDistance` e **`named (candidate rule, ADR 0035)`**, cioè se secondo l'addon quell'NPC conta come «con un nome»;
- gli eventi `PLAYER_REGEN_DISABLED` e `ENABLED` (entrata e uscita dal combattimento), `PLAYER_ENTER_COMBAT` (attacco automatico), `UNIT_SPELLCAST_SENT`, `UNIT_COMBAT` (un colpo su un'unità), `UNIT_THREAT_LIST_UPDATE`, `UNIT_THREAT_SITUATION_UPDATE`, `UNIT_DIED`, `PARTY_KILL`, `PLAYER_DEAD`, `NAME_PLATE_UNIT_ADDED` e `REMOVED`;
- le righe **`N0 fight N, start`** e **`N0 fight N, end`** (gli ultimi 3 combattimenti) e **`N0 death N`** (le ultime 2 morti): chi ha colpito per primo, quante unità ti combattevano, quali barre dei nomi c'erano intorno, se il bersaglio è morto e chi ti stava attaccando quando sei morto.

Nessun nome né GUID: solo numeri, sì/no, il numero dell'NPC (`npcID`, uguale su tutti i server: si può cercare su un sito di database) e parole fisse del client (`elite`, `WOUND`, `Horde`...). **Prima di ogni passo scrivi `/au probe reset`** (azzera combattimenti e morti) e alla fine del passo `/au probe copy`. Accendi le **barre dei nomi** (tasto **V** per i nemici, **Maiusc+V** per gli amici, oppure Opzioni > Interfaccia > Nomi), altrimenti i testimoni non si possono contare.

**Quanto tempo.** Circa 40 minuti, in una zona iniziale, con un personaggio di qualunque livello. Fai i passi che puoi; per gli altri scrivi «non fatto».

- **N0.1 · Inizio.** Subito dopo l'accesso, `/au probe`.
    - **Cosa aspettarti:** le nuove righe qui sopra; senza bersaglio, le righe del bersaglio dicono `no target selected`; `C_CombatLog.IsCombatLogRestricted` con un valore; gli eventi `registered`; `N0 fights seen: 0`.
    - **Cosa riportare:** le righe `MISSING` o `RESTRICTED`.
- **N0.2 · Chi conta come «con un nome».** Fuori dal combattimento, seleziona uno alla volta e scrivi `/au probe` per ciascuno: un animale qualunque; un mostro con il drago sul ritratto (**élite**); un **raro** se lo incontri (drago argentato); il bersaglio di una missione «uccidi X» (**quest boss**, se ce n'è uno nella zona); una **guardia**; un locandiere o un mercante con cui hai parlato (hanno una scheda nelle relazioni); un NPC dell'**altra fazione** (una guardia di una città nemica, un maestro di volo dell'altra parte: selezionalo da lontano, non serve combattere).
    - **Cosa aspettarti:** `UnitClassification` `normal`, `elite`, `rare`, `rareelite` o `worldboss`; `UnitIsQuestBoss` vero solo per il bersaglio della missione; `UnitCreatureType` con `humanoid yes` per le persone; `named` dice `named` per l'élite, il raro, il quest boss e l'NPC con cui hai parlato, e `not named, ordinary (normal)` per l'animale.
    - **Cosa riportare:** le righe del bersaglio di ogni NPC (da `UnitThreatSituation` a `named`), con un titolo come «N0.2 élite», e **quali NPC secondo te dovrebbero contare come «con un nome» e non contano** (o il contrario).
- **N0.3 · Attacchi tu per primo.** `/au probe reset`. Scegli un animale **giallo** (neutrale), che da solo non attacca, selezionalo e colpiscilo con l'**attacco automatico** (clic destro). Uccidilo. Poi `/au probe copy`. Se il personaggio usa incantesimi, ripeti con un **incantesimo** come primo colpo.
    - **Cosa aspettarti:** `N0 fight 1, start: ... opened by player (swing ...)` (o `(cast ...)` con un incantesimo); alla fine `dead yes`, `same unit yes`, `UNIT_DIED engaged 1`, `PARTY_KILL by me 1`.
    - **Cosa riportare:** il testo. Soprattutto: `opened by` dice `player`? `UNIT_DIED` e `PARTY_KILL` scattano, o sono `hidden`?
- **N0.4 · Ti attacca lui per primo.** `/au probe reset`. Avvicinati a un mostro **rosso** (aggressivo) **senza selezionarlo** e lascia che colpisca per primo. Poi selezionalo e uccidilo. `/au probe copy`.
    - **Cosa aspettarti:** `opened by enemy (hit on player ...)`; `it targets me yes` se l'avevi già selezionato all'inizio del combattimento.
    - **Cosa riportare:** il testo, e se l'avevi selezionato prima o dopo il primo colpo.
- **N0.5 · Due o tre insieme.** `/au probe reset`. Attira due o tre mostri insieme e uccidili (con un incantesimo ad area se ne hai uno). `/au probe copy`.
    - **Cosa aspettarti:** `N engaged` e `N attacking me` a 2 o 3; `UNIT_DIED engaged` e `PARTY_KILL by me` sommano i morti.
    - **Cosa riportare:** il testo, e quanti ne hai uccisi.
- **N0.6 · I testimoni.** `/au probe reset`. Con le barre dei nomi amiche accese (**Maiusc+V**), combatti un mostro **vicino a guardie o alla gente di un villaggio** (una strada con le pattuglie, il bordo di una città). `/au probe copy`. Se un tuo incantesimo ad area tocca un NPC amico, scrivilo (non dovrebbe essere possibile: il gioco li protegge).
    - **Cosa aspettarti:** `witnesses: N nameplates, N friendly npc, N near` con numeri sopra zero; `friendly npc hit 0`.
    - **Cosa riportare:** il testo, e quanti NPC amici vedevi intorno (più o meno).
- **N0.7 · Il mostro di un altro.** Se un giocatore sta combattendo un mostro, selezionalo (la sua barra diventa grigia) e `/au probe`.
    - **Cosa aspettarti:** `UnitIsTapDenied(target): -> true`.
    - **Cosa riportare:** le righe del bersaglio. Non attaccare il mostro dell'altro giocatore se gli dà fastidio.
- **N0.8 · Un famiglio o un gruppo.** Solo se il personaggio ha un famiglio (cacciatore, stregone) o sei in gruppo: `/au probe reset`, lascia che il famiglio o un compagno dia l'ultimo colpo di un combattimento, `/au probe copy`.
    - **Cosa aspettarti:** `PARTY_KILL by me 0, pet 1` (o `other 1` per un compagno).
    - **Cosa riportare:** il testo, e chi ha dato l'ultimo colpo.
- **N0.9 · La tua morte.** `/au probe reset`. Lascia che un mostro più forte ti uccida (costa solo la corsa fino al corpo). **Prima di liberare lo spirito**, `/au probe copy`.
    - **Cosa aspettarti:** `N0 death 1: during a fight` o `... after the fight ended`; `last unit attacking me npcID ...` con il numero del mostro che ti ha ucciso; `it is my target yes` se lo avevi selezionato.
    - **Cosa riportare:** il testo, quale mostro ti ha ucciso e se era il tuo bersaglio.
- **N0.10 · Invio dei risultati.** Scrivi un **commento nell'issue #212** (<https://github.com/Finland6738/azeroth-unspoken/issues/212>) con i testi uno sotto l'altro, ciascuno con il suo titolo («N0.3 attacco per primo», «N0.9 morte»...). **Nessun nome di altri giocatori**; i numeri `npcID` possono restare.
## N2: livelli visibili, primo incontro e temperamento degli NPC (aggiunto dall'issue #214)

Solo narrazione: nessun NPC cambia comportamento nel gioco, e nulla va in chat. API già usate altrove (`UnitRace` sull'NPC
del dialogo, `C_Weather`, `C_DateAndTime.IsDayTime`, `GetGameTime`, `UnitLevel`); nuovo è solo l'uso. Provato solo con il
client finto.

- **N2.1 · Primo incontro.** Parla (gossip) con un NPC mai visto, meglio di notte o sotto la pioggia; poi
  `/au relationships detail npc:<numero>` (il numero è in `/au relationships list`).
    - **Cosa aspettarti:** «Primo incontro: <data>, di notte, sotto la pioggia, in <zona>, eri di livello <n>.» Il meteo
      manca se il client non lo dice; mai un meteo sbagliato.
    - **Cosa riportare:** il testo esatto, l'ora di gioco e il meteo che vedevi.
- **N2.2 · Il riquadro dell'NPC.** `/au relationships`, apri un NPC.
    - **Cosa aspettarti:** sotto le due colonne, **Cosa sa l'addon**: «Livello 5 di 9: Neutrale. Prossimo: Conoscente
      (…%).», la riga del temperamento («Si affeziona in fretta, …» per un locandiere) e il primo incontro a destra; nulla
      si sovrappone, nulla esce dalla finestra.
    - **Cosa riportare:** uno screenshot (risoluzione e scala).
- **N2.3 · Temperamento.** Parla lo stesso giorno, qualche volta, con un locandiere e con una guardia (per esempio
  Marshal Dughan a Goldshire) e confronta la familiarità nel dettaglio.
    - **Cosa aspettarti:** il locandiere sale più in fretta e il suo tetto del giorno è più alto; la guardia più piano.
- **N2.4 · La razza.** Parla con un NPC elfo della notte o draenei che non è nell'elenco curato.
    - **Cosa aspettarti:** se il client dice la razza dell'NPC, il dettaglio la nomina tra le ragioni del temperamento
      («… elfo della notte») e la familiarità sale più piano.
    - **Cosa riportare:** se `UnitRace("npc")` dà una razza per gli NPC (sì/no, quale).
- **N2.5 · Avviso di livello.** Porta un NPC al livello successivo con missioni consegnate (o con
  `/au relationships set npc:<numero> trust 30` e poi un dialogo).
    - **Cosa aspettarti:** una riga breve nel narratore, solo per te: «Qualcosa si è sciolto tra te e <nome> (prima
      Neutrale, ora Conoscente).» Nessuna riga se a cambiare il livello è il cursore. Lo stesso NPC non lo ripete per circa
      un giorno; al massimo quattro avvisi per sessione.
- **N2.6 · Mai in combattimento.** Consegna una missione che fa salire un livello mentre sei in combattimento (o entra in
  combattimento subito prima).
    - **Cosa aspettarti:** nulla durante il combattimento; la riga arriva appena il combattimento finisce. Nulla in chat.
- **N2.7 · Diario.** Porta un NPC ad **Amico** (o più su).
    - **Cosa aspettarti:** nel diario «Un legame cresce: Amico (<zona>)», una sola volta per quell'NPC, senza il suo nome.
      Con **Avvisi di livello** spento (scheda Opzioni) la riga del narratore non c'è, il diario sì.

## N3: storia d'amore con gli NPC, solo con il sesso opposto, con un voto (aggiunto dall'issue #215)

Solo narrazione, privata, mai in chat. API già usate altrove (`UnitSex`, `UnitCreatureType`, entrambe nel dump di
Forever); nuova è la lettura sull'NPC del dialogo (`npc`). Provato solo con il client finto.

- **N3.1 · Le letture.** Accendi l'asse dell'attrazione (`/au relationships attraction on`). Parla con un NPC umanoide
  del sesso opposto, poi con uno del tuo stesso sesso e, se lo trovi, con un NPC non umanoide che parla (una bestia o un
  elementale che dà missioni).
    - **Cosa riportare:** se `UnitSex("npc")` e `UnitCreatureType("npc")` danno valori per l'NPC di un dialogo (scrivi
      `/run print(UnitSex("npc"), UnitCreatureType("npc"))` con il dialogo aperto).
- **N3.2 · La crescita.** Con un NPC del sesso opposto già **Amico** (o dopo `/au relationships set npc:<numero>
  affection 60` e `trust 40`), parlaci qualche volta nello stesso giorno.
    - **Cosa aspettarti:** l'attrazione sale di poco (al massimo circa 2 punti al giorno). Con un NPC del tuo stesso sesso,
      o con un mercante con cui commerci soltanto, non si muove.
- **N3.3 · Sotto Amico.** Con un NPC Conoscente, parlaci qualche volta.
    - **Cosa aspettarti:** l'attrazione non si muove.
- **N3.4 · Il voto.** Imposta `/au relationships set npc:<numero> attraction 79` e `affection 60`, poi parlaci.
    - **Cosa aspettarti:** una riga privata nel narratore («Nessuno lo sente, e <nome> non lo saprà mai: …» oppure «Un
      voto, fatto in silenzio: …»), nulla in chat; nel diario «Un voto silenzioso, mai detto ad alta voce (<zona>)»,
      senza il nome; il dettaglio dice «Hai fatto un voto privato per questa persona.» Parlandoci ancora non si ripete.
- **N3.5 · Asse spento.** Spegni l'asse dell'attrazione.
    - **Cosa aspettarti:** nessuna attrazione, nessuna riga d'amore, nessun voto.

## N4: promesse, giuramenti e spergiuri (aggiunto dall'issue #216)

Solo narrazione: nessun NPC cambia comportamento nel gioco, e nulla va in chat. Eventi e funzioni nuovi per l'addon, tutti
nel dump di Forever: `QUEST_REMOVED`, `C_QuestLog.SetAbandonQuest` / `AbandonQuest` / `GetAbandonQuest` (agganciati con
`hooksecurefunc`), `C_QuestLog.IsOnQuest`, `C_QuestLog.IsComplete`, `C_QuestLog.IsQuestFlaggedCompleted`. Provato solo con
il client finto.

- **N4.1 · Una promessa.** Accetta una missione da un NPC che parla (non da un oggetto), poi apri l'NPC in
  `/au relationships`.
    - **Cosa aspettarti:** in **Cosa sa l'addon**, «La tua parola: 1 promesse aperte, la più vecchia da 0 giorni.». Una
      missione presa da un oggetto o da un cartello non è una promessa a nessuno.
    - **Cosa riportare:** il testo; se con una missione accettata da un NPC la riga manca, quale NPC e quale missione.
- **N4.2 · Abbandono.** Abbandona quella missione dal registro (il pulsante Abbandona e la conferma).
    - **Cosa aspettarti:** subito, o al massimo dopo tre secondi, una riga privata del narratore: «Avevi dato la tua
      parola a <nome>, e l'hai lasciata cadere. …». Nel dettaglio la fiducia di quell'NPC è scesa di qualche punto.
    - **Cosa riportare:** quanto tempo dopo arriva la riga; le righe `hook:C_QuestLog.AbandonQuest` e
      `hook:C_QuestLog.SetAbandonQuest` di `/au debug` (disponibili o mancanti).
- **N4.3 · Una consegna normale.** Accetta una missione e consegnala al suo NPC.
    - **Cosa aspettarti:** nessuna riga sulla parola data (consegnata in tempo); la promessa sparisce dal dettaglio.
      **Mai** la riga dell'abbandono per una missione consegnata.
    - **Cosa riportare:** una riga di abbandono dopo una consegna (molto importante: vuol dire che `QUEST_TURNED_IN` e
      `QUEST_REMOVED` non arrivano nell'ordine atteso), e se la missione era consegnata a un NPC diverso.
- **N4.4 · Promemoria e sollievo.** Tieni una missione aperta per più di una settimana di calendario, poi parla con
  l'NPC che te l'ha data, senza averla finita.
    - **Cosa aspettarti:** «<nome> aspetta da <n> giorni il compito che avevi accettato, e non l'ha dimenticato.» Non di
      nuovo per circa un giorno; nulla se la missione è pronta da consegnare. Consegnandola poi a quell'NPC: «Sollievo
      sul volto di <nome>: con <n> giorni di ritardo, ma la tua parola ha tenuto.»
    - **Cosa riportare:** i testi e i giorni.
- **N4.5 · Un giuramento.** Con un NPC che è già **Amico** (livello 6 o più nel dettaglio), accetta una missione.
    - **Cosa aspettarti:** il dettaglio dice «(1 giurate)».
- **N4.6 · Spergiuro.** Abbandona quella missione.
    - **Cosa aspettarti:** «L'avevi giurato a <nome>, che si fidava di te, …»; di solito l'NPC scende di un livello (senza
      una seconda riga di livello); nel diario «Un giuramento infranto (<zona>)», senza nomi. Parlando di nuovo con
      quell'NPC nella stessa sessione: «<nome> non ha dimenticato il giuramento che hai infranto.», una volta; il dettaglio
      dice «Ricorda il giuramento che hai infranto (ne resta il 100%).»
- **N4.7 · La città ricorda.** Nella stessa zona o città, parla con un altro NPC.
    - **Cosa aspettarti:** una volta per sessione, «<zona> non ha dimenticato il tuo giuramento infranto.» (o la seconda
      variante). In un'altra zona nulla.
    - **Cosa riportare:** il nome della zona che compare (è la mappa di `C_Map.GetBestMapForUnit`: dentro un edificio di
      una capitale potrebbe essere una mappa diversa).
- **N4.8 · Mai in combattimento, mai in chat.** Entra in combattimento e parla con un NPC che aspetta una promessa
  vecchia (se capita), poi spegni **Avvisi delle promesse** nella scheda Opzioni.
    - **Cosa aspettarti:** in combattimento nessuna riga (non aspetta la fine: si perde); con l'opzione spenta nessuna
      riga, ma la promessa resta nel dettaglio. Nulla in chat in nessun caso.

## N5: favori e soprannomi (aggiunto dall'issue #217)

Solo narrazione: nessun NPC cambia comportamento nel gioco, e nulla va in chat. Niente di nuovo dal client: i favori usano
`NPC_INTERACT`, l'aggancio a `BuyMerchantItem`, `PLAYER_UPDATE_RESTING` / `IsResting`, `ZONE_CHANGED_NEW_AREA` e
`PLAYER_ENTERING_WORLD` con `GetRealZoneText` e `C_Map.GetBestMapForUnit`, già usati. Provato solo con il client finto.
Un favore si chiede con una probabilità (circa un incontro su tre): alcuni passi richiedono qualche incontro.

- **N5.1 · Un favore chiesto.** Parla qualche volta (anche in giorni diversi) con un NPC con un nome che è già **Amico**
  (livello 6 o più nel dettaglio).
    - **Cosa aspettarti:** prima o poi una riga privata: «<nome> vorrebbe rivederti domani. …» (o un altro favore); il
      dettaglio dice «Un favore chiesto: … (restano <n> giorni).». Nessun favore da uno sconosciuto, nessuno in
      combattimento.
    - **Cosa riportare:** il testo, quanti incontri ci sono voluti, quale NPC (ruolo).
- **N5.2 · Torna domani.** Con un favore «tornare» aperto, parla di nuovo con l'NPC il giorno dopo (18 ore o più).
    - **Cosa aspettarti:** «<nome> è felice di rivederti, come avevi promesso.» (o la seconda variante); nel diario «Un
      favore fatto a un amico (<zona>)», senza nomi; il favore sparisce dal dettaglio e compare «Favori fatti per questa
      persona: 1.».
- **N5.3 · Compra da me.** Con un mercante Amico, aspetta il favore «comprare», poi in una visita successiva (un'ora o
  più) compra qualcosa da lui.
    - **Cosa aspettarti:** «<nome> conta le monete due volte, …» subito dopo l'acquisto. Un acquisto nella stessa visita, o
      da un altro mercante, non conta.
    - **Cosa riportare:** se la riga arriva, e la riga `hook:BuyMerchantItem` di `/au debug`.
- **N5.4 · Riposa nella mia locanda.** Con un locandiere Amico, aspetta il favore «riposare», esci dal gioco in quella
  locanda e rientra sei o più ore dopo.
    - **Cosa aspettarti:** all'accesso, «Hai dormito sotto il tetto di <nome>, …». Entrare altrove non conta.
    - **Cosa riportare:** se `IsResting` è già vero all'accesso (la riga arriva subito) o solo quando rientri nella
      locanda.
- **N5.5 · Vai a vedere una zona.** Con un favore «visitare» («… se la tua strada passa mai per <zona> …»), vai in quella
  zona.
    - **Cosa aspettarti:** entrando, «Ecco il posto che <nome> voleva che vedessi: <zona>. …»; la volta dopo che parli con
      l'NPC, «<nome> ascolta il tuo racconto di <zona> con gli occhi che brillano.»
    - **Cosa riportare:** la zona nominata (deve essere sul tuo continente e adatta al tuo livello) e se l'ingresso è
      stato notato.
- **N5.6 · Un soprannome.** Porta un NPC con un nome a **Grande amico** (livello 8).
    - **Cosa aspettarti:** una volta, «Ora <nome> ti chiama "<soprannome>". …»; il diario dice «Un soprannome:
      <soprannome> (<zona>)»; il dettaglio dice «Ti chiama "<soprannome>".»; se l'NPC ha la finestra di dialogo
      (locandiere, mercante, guardia, maestro di volo, addestratore), la battuta d'apertura a volte ti saluta con il
      soprannome. In italiano il soprannome prende la forma del sesso del personaggio.
    - **Cosa riportare:** il soprannome e se si addice al personaggio.
- **N5.7 · Scadenza, opzioni, riservatezza.** Lascia scadere un favore senza farlo, poi parla con l'NPC. Spegni **Favori**
  e **Soprannomi** nella scheda Opzioni.
    - **Cosa aspettarti:** il favore scaduto sparisce senza una riga e senza che l'NPC ti voglia meno bene; con le opzioni
      spente nessun nuovo favore o soprannome, e le battute dei dialoghi smettono di usare il soprannome. Nulla in chat in
      nessun caso.
## N6: le voci corrono, titoli d'onore, rivali (aggiunto dall'issue #218)

Solo narrazione: nessun NPC cambia comportamento nel gioco, e nulla va in chat. Funzioni lette dall'addon per questa
parte, già usate altrove e tutte nel dump di Forever: `GetSubZoneText`, `GetRealZoneText`, `IsInInstance`,
`C_Map.GetBestMapForUnit`. Provato solo con il client finto.

- **N6.1 · Il luogo.** A Goldshire parla con un NPC, poi aprilo in `/au relationships`.
    - **Cosa aspettarti:** sotto **Che cosa sa l'addon**, «Il suo luogo: Goldshire, dove la voce su di te è …». Dentro la
      locanda (Lion's Pride Inn) il luogo resta Goldshire. A Stormwind il luogo è «Stormwind City» in ogni quartiere.
    - **Cosa riportare:** il nome che compare dentro la locanda e in due quartieri di una capitale; un NPC in aperta
      campagna non deve avere un luogo.
- **N6.2 · Le voci corrono.** Consegna qualche missione a un NPC di un villaggio, poi parla per la prima volta con un
  altro NPC dello stesso villaggio.
    - **Cosa aspettarti:** a volte una riga privata («<nome> ha già sentito parlare di te prima che tu apra bocca: a
      <luogo> se ne parla bene.»); nel dettaglio del nuovo NPC un po' di fiducia senza averci fatto nulla. Un NPC di un
      altro villaggio non sa nulla.
    - **Cosa riportare:** se la riga compare, e i numeri di fiducia del nuovo NPC.
- **N6.3 · Un titolo d'onore.** Fai diventare **Amici** tre NPC dello stesso villaggio (o consegna lì molte missioni).
    - **Cosa aspettarti:** una volta, «A <luogo> hanno cominciato a chiamarti Amico di <luogo>.» (Amica per un
      personaggio femminile); nel diario «Un titolo d'onore: Amico di <luogo>»; il dettaglio dice «Lì sei Amico di
      <luogo>.». Fuori dal villaggio il narratore non lo usa.
    - **Cosa riportare:** dopo quanto tempo arriva, e se il genere è giusto.
- **N6.4 · Un giuramento infranto toglie il titolo.** Nel villaggio del titolo, infrangi un giuramento (passo N4.6).
    - **Cosa aspettarti:** il dettaglio dice «Lì eri …, ma il luogo te lo nega finché ricorda un giuramento infranto.»
- **N6.5 · Rivali.** Diventa **Amico** di Innkeeper Farley (Goldshire), poi parla con Innkeeper Allison (Stormwind).
    - **Cosa aspettarti:** una volta, una riga gelosa («Un'accoglienza più fredda da Innkeeper Allison: si dice che ora
      preferisci Innkeeper Farley.») e un po' meno affetto nel suo dettaglio, che dice «Rivale di: Innkeeper Farley.».
      Lo stesso con Smith Argus e Corina Steele a Goldshire. Una seconda volta nulla.
    - **Cosa riportare:** gli npcID con `/au who` se non succede nulla (i numeri vengono da Classic Era).
- **N6.6 · Mai in combattimento, mai in chat, una riga per incontro.** Spegni **Avvisi dei luoghi** nella scheda Opzioni.
    - **Cosa aspettarti:** nessuna riga con l'opzione spenta, ma le voci e i titoli restano nel dettaglio e
      nell'esportazione; mai più di una riga dei luoghi in un incontro; nulla in chat.

## N1: ostilità, rancore, tradimento, testimoni e ospitalità (aggiunto dall'issue #213)

Solo narrazione: nessun NPC cambia comportamento nel gioco, e nulla va in chat. Lo scontro si legge **senza registro di
combattimento** con la ricetta dell'ADR 0035, **non ancora confermata nel gioco** (il proprietario ha deciso di non
aspettare la sezione N0): se un passo non va, apri una issue con quello che hai visto. Funzioni nuove per questa parte,
tutte nel dump di Forever: `PLAYER_ENTER_COMBAT`, `UNIT_COMBAT`, `UNIT_DIED`, `PARTY_KILL`, `UnitThreatSituation`,
`CheckInteractDistance`, `UnitIsTapDenied`, `GetBindLocation`. Provato solo con il client finto. Attaccare un NPC può
costarti la vita (arrivano le guardie): fallo dove la corsa al corpo è breve.

- **N1.1 · Colpisci per primo.** Parla con un NPC **giallo** (neutrale) con un nome, per esempio un mercante di Ratchet
  o di Booty Bay, poi selezionalo e colpiscilo con l'attacco automatico.
    - **Cosa aspettarti:** finito lo scontro, una riga privata («Il primo colpo a … l'hai dato tu.» oppure «… ricorderà
      chi ha alzato la mano per primo.»); in `/au relationships` l'NPC è **Odiato** e il dettaglio dice «Porta rancore:
      …» e «Il rancore è per sempre.».
    - **Cosa riportare:** se la riga arriva, dopo quanti secondi, e se il primo colpo con un incantesimo dà lo stesso.
- **N1.2 · Chi non conta.** Colpisci un animale giallo qualunque; poi lascia che un mostro rosso ti colpisca per primo.
    - **Cosa aspettarti:** nessuna riga, nessun NPC nuovo nella lista.
- **N1.3 · Un'uccisione.** Uccidi l'NPC del passo N1.1 (o un altro NPC giallo con un nome).
    - **Cosa aspettarti:** la riga dell'uccisione («Per mano tua, … ha trovato la fine.»); il dettaglio dice «ha trovato
      la fine per mano tua». Con un famiglio che dà l'ultimo colpo, lo stesso.
- **N1.4 · Testimoni.** Accendi le barre dei nomi amiche (**Shift+V**) e ripeti N1.1 vicino ad altri NPC amici che
  conosci.
    - **Cosa aspettarti:** il dettaglio di un testimone che conosci mostra meno fiducia; la prossima volta che parli con
      un altro NPC del luogo, sa già qualcosa. Senza barre amiche, il luogo non sa nulla.
- **N1.5 · La città dell'altra fazione.** Colpisci per primo una guardia di un villaggio o di una città dell'altra
  fazione.
    - **Cosa aspettarti:** «<luogo> ricorderà la tua lama.»; nessuna guardia nella lista, una per una.
- **N1.6 · Ospitalità.** Lega la pietra del ritorno in una locanda neutrale (Ratchet, Booty Bay, Gadgetzan), poi colpisci
  il locandiere (oppure qualcuno dentro la locanda).
    - **Cosa aspettarti:** «Hai alzato la mano sotto il tetto di …»; il locandiere è Odiato; nel diario «Ospitalità
      tradita (<luogo>)», per sempre; il dettaglio del locandiere dice «Custode del tuo focolare.».
    - **Cosa riportare:** il testo di `GetBindLocation` se il locandiere non viene riconosciuto
      (`/dump GetBindLocation()`).
- **N1.7 · Tornare a casa.** Resta lontano dal luogo della tua pietra del ritorno per più di cinque giorni, poi torna.
    - **Cosa aspettarti:** una riga calda («Di nuovo a casa. …»), oppure fredda dopo il passo N1.6.
- **N1.8 · Le opzioni.** Spegni **Rancore eterno**: il dettaglio dice quanti giorni resta il rancore. Spegni **Avvisi di
  ostilità**: nessuna riga, ma il rancore resta. Mai nulla in chat.

## N7: la nemesi e i canti della sua caduta (aggiunto dall'issue #219)

Solo narrazione: la nemesi combatte come ha sempre fatto, e nulla va in chat. Chi ti ha ucciso e la caduta della nemesi si
leggono **senza registro di combattimento** con la ricetta dell'ADR 0035 (punti 4 e 5), **non ancora confermata nel
gioco** (il proprietario ha deciso di non aspettare la sezione N0): se un passo non va, apri una issue con quello che hai
visto. Funzioni nuove per questa parte, tutte nel dump di Forever: `UNIT_THREAT_LIST_UPDATE`, `UnitThreatSituation`,
`PLAYER_DEAD`, `UNIT_DIED`, `PARTY_KILL`, `UnitClassification`, `IsInInstance`. Per il canto serve la cartella
`AzerothUnspoken_Versi`. Provato solo con il client finto ([ADR 0045](adr/0045-nemesis-arcs-told-for-many-npcs-killed-by-and-the-song-of-a-fall.md)).

- **N7.1 · Una nemesi.** Fatti uccidere, fuori dai dungeon, da un mostro **élite** (il drago d'oro sul ritratto) che stai
  combattendo da solo.
    - **Cosa aspettarti:** tornato in vita, una riga del narratore o della voce interiore che lo nomina; nel diario,
      scheda **Storie**, il titolo **Nemesi (1 di 3)** e la storia *L'ombra di <nome>*, stato *il segno*.
    - **Cosa riportare:** se la storia non nasce, con `/au debug` (la riga «Nemesis:») e quanti mostri ti attaccavano.
- **N7.2 · Chi non conta.** Fatti uccidere da un mostro normale, poi da un élite in un dungeon, poi muori cadendo.
    - **Cosa aspettarti:** nessuna nemesi.
- **N7.3 · Più a fondo.** Fatti uccidere ancora dalla stessa nemesi, due volte.
    - **Cosa aspettarti:** *l'ombra lunga*, poi *la contesa*, ciascuna con una sua riga.
- **N7.4 · Ritrovarla.** Più di mezz'ora dopo, seleziona la nemesi.
    - **Cosa aspettarti:** una riga breve che la nomina; selezionarla di nuovo subito dopo non dice nulla.
- **N7.5 · La caduta.** Uccidi la nemesi da solo (o con il tuo famiglio).
    - **Cosa aspettarti:** a fine scontro la riga della chiusura; un avviso privato «“L'ombra di <nome>” è finita. Un
      canto di quella caduta è nel tuo canzoniere: …»; nel diario la storia tra quelle concluse, con la sua pagina; in
      **Canzoniere** il canto, che si apre intero. Se l'uccide un altro giocatore, la storia continua.
    - **Cosa riportare:** se la caduta non viene vista (e chi ha dato il colpo finale), se il canto manca.
- **N7.6 · Le scelte.** `/au stories disable nemesis`, poi fatti uccidere da un élite; poi `/au stories enable nemesis`.
    - **Cosa aspettarti:** con la nemesi spenta nessuna storia; riaccesa, di nuovo. Una quarta nemesi aspetta tra le
      storie che possono cominciare finché non ne sospendi una. Mai nulla in chat.

---

## L2: versi su più righe, forme letterarie rare, lettura lunga (aggiunto dalle issue #117, #118 e #126)

Provato solo con il client finto ([ADR 0042](adr/0042-literary-forms-category-pacing-line-breaks-and-long-reading.md)):
il proprietario ha deciso di non fermarsi per le prove nel gioco. Serve la cartella `AzerothUnspoken_Versi`. Se un passo
non va, apri una issue con quello che hai visto.

- **L2.1 · Un verso per riga.** `/au event lore_test` qualche volta.
    - **Cosa aspettarti:** la prima riga (chi porta le parole, con i due punti), poi i versi **uno alla volta**, ciascuno
      dopo il tempo di leggere il precedente; il riquadro è già alto quanto tutto il pezzo e non salta.
    - **Cosa riportare:** se le righe arrivano troppo in fretta o troppo piano; se un verso va a capo male.
- **L2.2 · Rotellina e clic.** Porta la grandezza del testo a 24 (`/au options`, **Dimensione del testo**) e ripeti
  L2.1 finché un pezzo non ci sta più nel riquadro (più di dodici righe).
    - **Cosa aspettarti:** il riquadro si ferma a dodici righe e il testo scorre con la **rotellina** sopra di lui; il
      riquadro segue l'ultima riga finché non lo muovi tu. Un clic sul testo passa al gioco (per esempio muove la
      visuale) anche mentre il riquadro scorre.
    - **Cosa riportare:** se la rotellina non fa nulla, o se il testo blocca i clic.
- **L2.3 · Riduci il movimento.** Accendi **Riduci il movimento** e ripeti L2.1.
    - **Cosa aspettarti:** il pezzo compare tutto insieme e resta lo stesso tempo.
- **L2.4 · La cronologia.** Apri la cronologia (**H** sul riquadro, o `/au narrator history`).
    - **Cosa aspettarti:** il pezzo su più righe, la prima con l'ora e la voce, le altre rientrate.
- **L2.5 · Mai in chat.** Con `/au mode confirm` (e poi `/au mode auto`, se l'hai acceso) ripeti L2.1, e prova
  `/au event lore_test` in combattimento.
    - **Cosa aspettarti:** nessuna proposta, nulla in chat; in combattimento nessun pezzo («nessuna frase»).
- **L2.6 · Quanto spesso.** Gioca un'ora con la riga **Forme letterarie** su *rare* (predefinito) nei posti dei pezzi
  (passo 106), poi un'ora su *normali*; prova anche *mai* con `/au event lore_test`.
    - **Cosa aspettarti:** rare: circa un pezzo ogni 20-30 minuti al massimo, mai due a meno di dieci minuti; normali:
      circa il doppio; mai: nessun pezzo, nemmeno a mano.
    - **Cosa riportare:** quanti pezzi in un'ora e se il ritmo ti sembra giusto.

## L3: metadati letterari, il momento giusto, canzoni a strofe (aggiunto dalle issue #119, #120, #127 e #128)

Provato solo con il client finto ([ADR 0043](adr/0043-literary-metadata-genre-matrix-interchangeable-stanzas-and-pieces-in-the-archive.md)): il proprietario ha deciso di non fermarsi per le prove nel gioco.
Serve la cartella `AzerothUnspoken_Versi`. Se un passo non va, apri una issue con quello che hai visto.

- **L3.1 · Una canzone a strofe.** `/au event lore_test` finché non arriva la canzone da cammino (*Torna in mente una
  canzone da cammino...*), qualche volta.
    - **Cosa aspettarti:** la prima riga, due delle quattro strofe con una riga vuota fra loro (sempre nello stesso
      ordine, una coppia diversa ogni tanto), poi il ritornello dopo una riga vuota; oltre le dodici righe il riquadro
      scorre.
    - **Cosa riportare:** una coppia di strofe che insieme non ha senso, un ritornello che manca o si ripete, un
      riquadro che taglia la canzone.
- **L3.2 · Il momento giusto.** Prega (`/au pray`) una volta di giorno e una dopo il tramonto.
    - **Cosa aspettarti:** l'inno solo dopo il tramonto (nomina la notte).
    - **Cosa riportare:** un pezzo che nomina qualcosa (la notte, la neve, un ritorno, la fede) che non è vero dove e
      quando arriva.
- **L3.3 · In un lungo viaggio.** Cavalca o vola per qualche minuto con **Forme letterarie** su *normali*.
    - **Cosa aspettarti:** ogni tanto la canzone da cammino alla fine del viaggio, mai in combattimento, mai in chat.

## L4: il canzoniere, un verso che torna, la cultura d'origine (aggiunto dalle issue #122, #123 e #124)

Provato solo con il client finto ([ADR 0044](adr/0044-songbook-recall-and-reading-frames-and-the-culture-of-origin.md)): il proprietario ha deciso di non fermarsi per le prove nel gioco.
Serve la cartella `AzerothUnspoken_Versi`. Se un passo non va, apri una issue con quello che hai visto.

- **L4.1 · Il canzoniere.** `/au event lore_test` due o tre volte, poi `/au songbook`.
    - **Cosa aspettarti:** il diario si apre su **Canzoniere** con i pezzi appena sentiti, per la loro prima riga, il più
      recente in alto; *Apri* mostra tutto il testo, un verso per riga, e *Impara*, *Preferito*, *Zittisci*, *Dimentica*.
    - **Cosa riportare:** un pezzo che manca dall'elenco, un testo tagliato o rovinato, una scheda o un pulsante la cui
      scritta non ci sta.
- **L4.2 · Zittire.** Zittisci un pezzo, poi `/au event lore_test` molte volte.
    - **Cosa aspettarti:** quel pezzo mai più, finché non gli ridai voce.
    - **Cosa riportare:** un pezzo zittito che torna.
- **L4.3 · Un verso che torna.** Con pezzi sentiti almeno sei ore prima (di gioco o no), riposa in una locanda o fai un
  lungo viaggio con **Forme letterarie** su *normali*.
    - **Cosa aspettarti:** ogni tanto una riga come *Un motivo sentito chissà dove mi riprende in testa:* e i versi di un
      pezzo già sentito, nella voce interiore, solo nel narratore, mai in combattimento, mai in chat.
    - **Cosa riportare:** il ricordo di un pezzo mai sentito, l'attribuzione del pezzo ancora lì, un ricordo in chat.
- **L4.4 · La cultura d'origine.** `/au soul`, la riga **Cultura d'origine**: clicca per scorrere le culture, poi **x**.
    - **Cosa aspettarti:** il pulsante largo quanto il nome più lungo, in italiano e in inglese; all'inizio nessuna
      scelta, qualunque sia la razza; `/au soul list` mostra la scelta.
    - **Cosa riportare:** un nome tagliato, una cultura scelta da sola.

---

## Modulo riassuntivo (copia e compila)

```
R1 accesso .............. cartelle «su richiesta»? ___  /au packs: enUS caricata ___ itIT non caricata ___ regione ______
R1 memoria .............. all'accesso (KB) ______  dopo i due continenti (KB) ______
R1 lingua ............... messaggio ___  finestra Ricarica? ___  dopo /reload itIT caricata, enUS no? ___
R1 continente ........... all'andata regione ______  al ritorno caricamenti invariati? ___  blocchi? ___
R1 combattimento ........ /reload in combattimento: errori? ___  attese per il combattimento ______
R1 cartella mancante .... messaggio (motivo) ______  frasi in inglese? ___  errori rossi? (deve essere NO) ___
R4b finestra ............ sezioni ok? ___  entra nello schermo? ___ (risoluzione/scala ______)
R4b incontri ............ gruppo ___  scambio ___  duello ___  invito ___  emote ___  bersaglio ___  battaglia insieme ___
R4b riconoscimento ...... una frase per sessione? ___  privata? ___  rispecchia il sentimento? ___
R4b sentimenti .......... nessuna frase calorosa con diffidenza/paura/rancore? ___  alleato ok? ___
R4b dimentica/rimuovi ... due azioni distinte? ___  esporta ok? ___
R3a un'ora ............. quota:combat visto? ___  troppo muto nei combattimenti? ___  morte/livello sempre? ___
R3a luogo/emote ......... prima le frasi del luogo? ___  gesti adatti? ___  «dice» raro? ___
R3b meteo ............... Enum.WeatherType ______  type pioggia ___ neve ___ sereno ___  unknown? ___  WEATHER_CHANGED arriva? ___
R3b giorno/notte ........ DIEL_CYCLE_CHANGED all'alba (ora) ______  al tramonto (ora) ______  IsDayTime insieme? ___
R3b sottozone ........... ZONE_CHANGED ___  ZONE_CHANGED_INDOORS ___  nomi diversi in Landmarks ______  pacchetti caricati? (deve essere NO) ___
R3b missioni ............ QUEST_ACCEPTED (argomenti) ______  QUEST_TURNED_IN ______  frasi nei momenti giusti? ___  molti tentativi? ___
R3b reputazione ......... reaction 1-8? ___  una frase per cambio di livello? ___  UPDATE_FACTION a raffica? ___
R3b locanda/volo ........ PLAYER_UPDATE_RESTING ___  rest_enter solo entrando? ___  volo: CONTROL_LOST/UnitOnTaxi/CONTROL_GAINED ______  paura = nessun volo? ___
R3b silenzio ............ in combattimento nessuna? ___  modulo Mondo spento? ___
R4 conversione ......... tratti convertiti? ___  perso qualcosa? ___  errori? ___
R4 cursori ............. seguono il mouse? ___  finestra nello schermo? ___ (scala ______)
R4 morte e ritorno ..... umore dopo la morte ______  frase di ritorno allegra? (deve essere NO) ___
R4 locanda/riaccesso ... sereno in locanda? ___  solo emozioni lente salvate? ___  testo nel file? (deve essere NO) ___
R4 carattere ........... stoico più calmo? ___  vendicativo più arrabbiato? ___
R4 spente .............. off in /au debug? ___  file vuoto? ___
U guida .................. compare dopo il caricamento? ___  mai in combattimento? ___  saltare: Salta/x/Esc/Invio ok? ___  WASD ok? ___
U consensi ............... finestra di conferma? ___  «Attiva» spento 2 s? ___  doppio clic non passa (4 consensi)? ___  «acceso, serve nome»? ___
U narratore ............. barra e tinta per voce? ___  voce interiore in altro carattere? ___  x non scarta? ___  barra leggibile EN/IT? ___  linea del tempo? ___  testo 28 ok? ___  cronologia: Esc, x, trascina, resta? ___
U finestre ............... il narratore non resta sotto? ___  sopra se troppo grande? ___  clic alza? ___  cascata? ___  sopra la conferma? (deve essere NO) ___
R3c monologhi .......... visti (quanti) ______  combinazioni che stonano ______  mai in chat? ___
R3c situazioni ......... vittoria di misura ___  livello sudato ___  ritorno sotto la pioggia ___  una sola frase? ___  secondi tra salute bassa e vittoria ______
SP-01 caricamento ....... (OK / NO / nota)   Client build: ______  Errori rossi: sì/no
SP-01 wizard ............ (OK / NO / nota)
SP-01 /au debug ......... (OK / NO / nota)   Capacità MISSING/RESTRICTED: ______
SP-02 eventi ............ ZONE_ENTER ok? ___  TARGET ok? ___  COMBAT ok? ___  SPELL ok? ___  LEVEL/MORTE ok? ___
SP-03 riquadro .......... si vede? ___  si sposta? ___  non blocca i clic? ___  opzioni ok? ___  cronologia? ___  pausa? ___
SP-03 Total RP 3 ........ con ___ senza ___ (non installato: scrivilo)
SP-04 salvataggio ....... dopo /reload ___  dopo uscita completa ___  file trovati ___
SP-05 A (privato) ....... nulla in chat? ___
SP-05 B (conferma) ...... Invia ok? ___  scade ok? ___  Modifica ok? ___  canali ok? ___  anti-flood ok? ___
SP-05 C (tasto) ......... conferma ok? ___  pausa ok? ___
SP-05 D (anteprima) ..... ok? ___
SP-05 E (auto) .......... emote da sole? ___  /say da solo nel mondo aperto? (deve essere NO) ___
S3 /au validate ........... errori ___  avvisi ___  accenti giusti (IT/EN)? ___  profondità: differenza notata? ___
S4 ritmo ................ invadente / giusto / muto ___  due frasi insieme? ___  riga Director in /au debug ______
S4 intensità ............ a 0 muto? ___  a 100 sopportabile? ___
S4 sospensioni .......... cinematica muta? ___  boss/élite muti? ___  api:InCinematic ___
S5 profilo ............. finestra ok? ___  cambio subito? ___  testo tagliato? ___
S5 argomenti evitati .... mai una frase vietata? ___  voce interiore spenta ok? ___
S5 Total RP 3 ........... tratti letti giusti? ___  (non installato: scrivilo)  righe api ___
S5 persistenza .......... dopo /reload ___  dopo uscita ___
Q2 nella chat (#14) ..... pulsante c'è? ___  casella su /s giusta? ___  Invio da lì parte? ___  riga api:OpenChat ___
Q2 testo per canale (#5)  emote in /s con nome? ___  parlato in /e con "dice"? ___
Q2 editor (#4) .......... resta aperto 40 s? ___  Invio spedisce? ___
Q2 automatica (#8) ...... due gesti da comando/pannello/wizard? ___
Q2 mouse sopra (#17) .... il riquadro resta? ___
Q2 identità segreta (#6)  nessun errore? ___  riga value:target.identity ___
S6 prima visita ........ frase? ___  ricordo nel diario? ___  nome zona giusto? ___  diario si apre/sposta? ___
S6 ritorno .............. frase di richiamo? ___  una sola frase? ___  "2 visite"? ___
S6 visita finita male ... morte/fuga nel diario? ___  frase che cita il falso? (deve essere NO) ___
S6 livelli e capitali ... ricordi giusti? ___  ricordi di troppo? (deve essere NO) ___
S6 persistenza .......... dopo /reload ___  dopo uscita ___  visita doppia dopo /reload? (NO) ___
S6 diario ............... cancella ___  permanente ___  esporta+Ctrl+C ___  scorre ___
S6b finestra ............ si apre? ___  testo tagliato? ___  si ordina/filtra? ___
S6b NPC automatici ...... gossip ___  quest ___  mercante ___  acquisto ___  vendita ___  riparazione ___  volo ___  addestratore ___  locanda ___
S6b NPC conosciuto ...... frase al dialogo? ___  troppo frequente? ___
S6b giocatori ........... proposte (gruppo/scambio/TRP3/whisper) ___  entrato da solo? (deve essere NO) ___  testo di whisper visibile? (deve essere NO) ___
S6b cursori e note ...... trascina ___  - e + ___  note/tag/etichetta ___  accenti ___
S6b tono ................ formale/caldo/teso giusti? ___  frasi che stonano ______
S6b persistenza ......... dopo /reload ___  dopo uscita ___  decadimento NPC ___
S6b esportazione ........ si copia? ___
S6c luogo ............... numeri di mappa ______  territorio giusto? ___  istanza e id ______  coda BG ___
S6c boss ................ silenzio durante? ___  frase alla fine? ___  nome giusto? ___
S6c ritmo ............... raid sobrio? ___  BG frasi brevi? ___  locanda più spazio? ___
S6c NPC ................. ruoli giusti ______  gossip senza ruolo? ___  Farley riconosciuto? ___
S6c giocatori ........... razza/classe giuste? ___  saluti che stonano ______
S6c azioni .............. duello ___  invito ___  /wave a te ___  scambio ___  quest ___
S6c TRP3 altri .......... razza/classe personalizzate? ___  errori? ___
S6c memoria luoghi ...... zona nota non "nuova"? ___  una sola riga? ___
Q3 Un'altra (#13) ....... cambia frase? ___  canale resta? ___  nulla in chat? ___  sei pulsanti ci stanno? ___
Q3 dopo il mouse (#21) .. resta un attimo, poi sparisce? ___
Q3 tratti/consenso (#37)  selettori ok? ___  finestra senza tagli? ___  consenso spento di base? ___
Q3 emote altre lingue ... client ______  riconosciuta? ___  testo esatto non riconosciuto ______  destinatario nel payload? ___
Q3 suggerimento con accento .. /au intensità dà il suggerimento? ___
S8/G3 finestra di prova . etichetta visibile? ___  si sposta/chiude? ___  testo tagliato? ___  nulla in chat? ___
S8/G3 locandiere ........ offerta compare? ___  non copre il gossip? ___  gossip intatto? ___  battute giuste? ___  testo ______
S8/G3 altri NPC ......... mercante ___  volo ___  addestratore ___  guardia ___  quest (NO) ___  locandiere qualunque (NO) ___
S8/G3 posizione ......... evita le finestre? ___  si conserva? ___  Esc non la chiude? ___
S8/G3 interruzioni ...... combattimento ___  zona ___  altro NPC ___  due minuti ___
S8/G3 carattere ......... burbero/gioviale diversi? ___  conosciuto diverso? ___  flag nel diario? ___  dopo /reload ___
S7/G2 slice A .......... frase di arrivo? ___  cambia con profondità/archetipo? ___  testo ______
S7/G2 slice C .......... frase di ritorno? ___  ricordo falso? (NO) ___  diario aggiornato? ___
S7 varietà ............. frasi ripetute ______  frasi che stonano ______  voce NPC ___
S9 sentiero ............ mapID ______  si apre? ___  non si apre fuori zona? ___  frase giusta? ___
S9 scelta .............. avviso ___  righe nella finestra? ___  pulsanti leggibili? ___  frase cambia? ___
S9 chiusura ............ ricordo permanente? ___  dopo /reload ___
S9 posti e controlli ... massimo rispettato? ___  sospendi/salta/disattiva ___  modulo spento ___
S9 volto noto .......... giorni necessari ______  nome giusto? ___  altro NPC non avanza? ___
S9 caduta .............. frase da viva? ___  ritorno riconosciuto? ___  evita morte ___
S9 tre porte ........... capitali riconosciute? ___  offerta dopo la pausa? ___
S9 ritmo ............... mai due ravvicinate? ___  mai in combattimento? ___  troppe? ___
Q5 invio bloccato ....... evento ______  argomenti ______  `last refusal blocked`? ___  popup di Blizzard? ___
Q5 ritorno dopo caricamento ordine PEW/ZONE ______  una sola frase? ___  all'accesso nulla? ___
Q5 diagnostica .......... nomi di altri giocatori? (deve essere NO) ___
Q5 fantasma ............. frase solo da vivo? ___  una volta sola? ___
Q5 rapporto altrui ...... /au who mostra chi ti saluta? ___
Q5 FrameXML ............. tooltip ___  pulsanti ___  scorrimento del narratore ___  pannello ___
Step 0 lingua ........... nuova in inglese? ___  italiano già scelto resta? ___  comandi inglesi in IT ok? ___  suggerimento ok? ___
L0 versi ............... /au validate versi ok? ___  lore_test in EN e IT? ___  nulla in chat? ___  A/B: una riga con " / " o a capo veri? ______  pezzo nel posto giusto? ___  locandiere? ___  pezzi che stonano ______
R0 prima misura ......... memoria (KB) ______  PickEntry p50/p95 ______  BuildContext p50/p95 ______  debugprofilestop? ___
R0 caricamento .......... con addon (s) ______  senza addon (s) ______
R0 capitale / aperto .... capitale ______  sottozone: eventi ZONE_CHANGED? ___  POI (numero) ______
R0 istanza .............. UnitPosition: AVAILABLE/RESTRICTED? ___  prof dentro ok? ___
R0 meteo ................ Enum.WeatherType ______  tipo con pioggia ___  con neve ___  sereno ___  WEATHER_CHANGED scatta? ___
R0 giorno e notte ....... DIEL_CYCLE_CHANGED scatta? ___  ora di gioco ______  IsDayTime cambia? ___
R0 missioni/reputazione . QUEST_ACCEPTED ___  QUEST_TURNED_IN (payload) ______  reaction 1-8? ___
R0 locanda e volo ....... PLAYER_UPDATE_RESTING ___  TAXIMAP_OPENED ___  UnitOnTaxi true in volo? ___
R0 combattimento ........ LoadAddOn in combattimento ______  Combat=1 dentro? ___
R0 dopo un'ora .......... memoria (KB) ______  rallentamenti? ___
R0 nomi altrui .......... nei rapporti? (deve essere NO) ___  issue ______
N0 con un nome .......... élite ___  raro ___  quest boss ___  guardia ___  locandiere ___  altra fazione ___  verdetti sbagliati ______
N0 attacco .............. opened by player (swing/cast)? ___  by enemy? ___  UNIT_DIED scatta? ___  PARTY_KILL by me? ___  hidden? ___
N0 più nemici/testimoni . engaged ___  attacking me ___  testimoni (barre/amici/vicini) ______  tap denied vero? ___
N0 famiglio / morte ..... PARTY_KILL pet/other ___  morte: durante/dopo il combattimento ______  ultimo attaccante = chi ti ha ucciso? ___
N2 primo incontro ....... ora giusta? ___  meteo giusto o assente? ___  zona e livello? ___
N2 riquadro NPC ......... livello e prossimo? ___  temperamento? ___  si sovrappone? (deve essere NO) ___
N2 temperamento ......... locandiere più veloce della guardia? ___  razza dell'NPC dal client? ______
N2 avvisi ............... riga privata? ___  mai in combattimento? ___  dopo il combattimento? ___  troppe? ___  diario Amico? ___
N3 letture .............. UnitSex("npc") ______  UnitCreatureType("npc") ______
N3 storia d'amore ....... sale con un Amico del sesso opposto? ___  non con stesso sesso/mercante/sotto Amico? ___
N3 voto ................. riga privata? ___  diario senza nome? ___  una volta sola? ___  nulla in chat? ___
N4 promessa ............ riga nel dettaglio? ___  da un oggetto nessuna? ___
N4 abbandono ............ riga privata (dopo quanti s) ______  hook AbandonQuest ______  SetAbandonQuest ______
N4 consegna ............. riga di abbandono dopo una consegna? (deve essere NO) ___  a un altro NPC? ___
N4 promemoria/sollievo .. promemoria dopo 7 giorni? ___  sollievo? ___  mai se pronta? ___
N4 giuramento ........... «giurate»? ___  spergiuro: riga, livello giù, diario? ___  l'NPC ricorda? ___  la zona (nome) ______
N4 silenzio ............. in combattimento nessuna? ___  opzione spenta nessuna? ___  nulla in chat? ___
N6 luogo ................ nella locanda ______  nei quartieri ______  in campagna nessuno? ___
N6 voci ................. riga a un NPC nuovo? ___  fiducia senza far nulla? ___  altro villaggio nulla? ___
N6 titolo ............... riga? ___  diario? ___  genere giusto? ___  negato dopo uno spergiuro? ___
N6 rivali ............... Allison nota Farley? ___  Corina nota Argus? ___  una volta sola? ___  nulla in chat? ___
N1 colpo per primo ...... riga? ___  dopo (s) ______  con un incantesimo? ___  Odiato? ___  animale/mostro nulla? ___
N1 uccisione/testimoni .. riga dell'uccisione? ___  famiglio? ___  testimone con meno fiducia? ___  il luogo lo sa? ___
N1 fazione/ospitalità ... città dell'altra fazione? ___  locandiere riconosciuto? ___  GetBindLocation ______  diario? ___
N1 casa/opzioni ......... ritorno caldo/freddo? ___  rancore eterno spento: giorni? ___  avvisi spenti? ___  nulla in chat? ___
N7 nemesi ............... élite: storia? ___  mostro normale/dungeon/caduta nulla? ___  riga al ritorno in vita? ___  quanti ti attaccavano ______
N7 incontro/caduta ...... riga all'incontro? ___  caduta vista? ___  chi ha dato il colpo ______  canto nel canzoniere? ___  nulla in chat? ___
L2 versi ................ uno alla volta? ___  troppo in fretta/piano? ___  rotellina? ___  clic passano? ___  cronologia a capo? ___
L2 frequenza ............ pezzi in un'ora (rare) ______  (normali) ______  mai: nessuno? ___  nulla in chat? ___
Altro (strano, brutto, fastidioso): ______________________
```

Grazie. Con questi risultati sistemo ciò che il client vero ha smentito, prima di scrivere i prossimi pezzi (schema dati, Narrative Director).
