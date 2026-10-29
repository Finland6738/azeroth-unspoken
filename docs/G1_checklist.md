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

Per vedere gli errori del gioco, prima di cominciare scrivi nella chat (premi Invio, scrivi, premi Invio):

```
/console scriptErrors 1
```

Per i comandi dell'addon vale sempre lo stesso gesto: premi **Invio**, scrivi il comando, premi **Invio**.

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
2. Nella procedura guidata prova i pulsanti: scegli la lingua, vai **Avanti** per tutti i passi. All'ultimo passo premi **Fine**. (Se preferisci puoi premere **Salta** in un passo qualsiasi: la prova vale lo stesso.)
   - **Cosa aspettarti:** a ogni passo cambia il testo del passo e il pulsante scelto è evidenziato con `» … «`. Alla fine compare in chat una riga che dice che il narratore è privato.
   - **Cosa riportare:** pulsanti che non rispondono, testi tagliati o sovrapposti (screenshot).
3. Scrivi `/au debug`.
   - **Cosa aspettarti:** alcune righe in chat. La prima è come `== Azeroth Unspoken 0.1.0: diagnostica ==`, la seconda comincia con `Client 1.60.1 (build 70658 ...), Interface 16001`. Poi la riga `Chat Gateway: mode PRIVATE ...`, poi una riga `Capacità: N AVAILABLE, N RESTRICTED, N MISSING`, poi l'elenco, infine `Nessun errore intercettato.`
   - **Cosa riportare:** **tutte le righe** (screenshot o testo). Se la build o l'Interface sono diversi da quelli sopra, segnalalo.
4. Scrivi `/au debug full`.
   - **Cosa aspettarti:** una riga per ogni capacità, con `AVAILABLE`, `RESTRICTED` o `MISSING` e un dettaglio.
   - **Cosa riportare:** tutte le righe con **MISSING** o **RESTRICTED** (screenshot dell'elenco completo, scorrendo la chat). Questo è l'elenco più utile della prova.
5. Scrivi `/au aiuto`.
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

1. Scrivi `/au narratore` (mostra una frase di prova).
   - **Cosa aspettarti:** in basso, al centro dello schermo, un **riquadro scuro** con in alto a sinistra una scritta colorata ("Narratore", "Personaggio", "Voce interiore" o "NPC") e sotto una frase. Dopo qualche secondo svanisce da solo. **Non** deve comparire nulla nella chat.
   - **Cosa riportare:** dove si trova, se è leggibile, se si sovrappone ad altri elementi (screenshot).
2. Ripeti `/au narratore` e prova l'intestazione del riquadro (la striscia in alto): **trascinala con il mouse** per spostare il riquadro. Rilascia. Rifai `/au narratore`.
   - **Cosa aspettarti:** il riquadro compare nella nuova posizione.
   - **Cosa riportare:** se non si sposta, o se si sposta ma torna al centro.
3. Mentre il riquadro è visibile **clicca nel mondo di gioco proprio sotto il testo** (non sull'intestazione): per esempio su un NPC, o per muovere il personaggio.
   - **Cosa aspettarti:** il clic arriva al gioco: il riquadro **non blocca** i clic sul testo.
   - **Cosa riportare:** se il clic viene "mangiato" dal riquadro.
4. Scrivi `/au opzioni` per aprire il pannello. Cerca la colonna "Riquadro del narratore". Prova i pulsanti `+` e `-` per **Durata del testo**, **Opacità** e **Dimensione del testo**; premi **Prova il narratore** dopo ogni cambio.
   - **Cosa aspettarti:** il riquadro dura di più o di meno, è più o meno trasparente, il testo è più grande o più piccolo.
   - **Cosa riportare:** se il pannello non si apre, o se qualcosa è tagliato fuori; se un pulsante non fa nulla.
5. Premi `H` nell'intestazione del riquadro (o scrivi `/au narratore cronologia`).
   - **Cosa aspettarti:** una finestra sopra il riquadro con le frasi recenti. Si scorre con la rotella.
6. **Pausa immediata**: premi il pulsante `||` nell'intestazione del riquadro, o scrivi `/au pausa`.
   - **Cosa aspettarti:** il riquadro si chiude, in chat compare "narratore in pausa". Se ora cammini e combatti non compaiono frasi. Ripremi `||` (ora è `>`) per riprendere.
   - **Cosa riportare:** se in pausa compaiono comunque frasi.
7. **Con e senza Total RP 3** (solo se lo hai installato): ripeti il passo 1 una volta con Total RP 3 attivo e una volta con Total RP 3 disattivato (dalla lista AddOn nella schermata di selezione del personaggio, poi rientra).
   - **Cosa aspettarti:** funziona in entrambi i casi. Con Total RP 3 e un profilo con nome, le frasi narrative usano il nome del profilo.
   - **Cosa riportare:** qualunque differenza di comportamento o errore.

---

## SP-04: i dati si salvano

1. Scrivi questi tre comandi, uno alla volta:
   - `/au intensita 70`
   - `/au profondita elevato`
   - `/au chat conferma`
   - e sposta il riquadro del narratore in un punto diverso (passo SP-03.2).
2. Scrivi `/reload` (ricarica l'interfaccia).
3. Dopo il ricaricamento scrivi `/au intensita` e `/au chat`.
   - **Cosa aspettarti:** "intensità: 70" e "chat: conferma per inviare". Il riquadro (`/au narratore`) compare dove lo avevi messo. La procedura guidata **non** ricompare.
   - **Cosa riportare:** valori tornati ai predefiniti (50 e "solo narratore privato").
4. **Esci davvero dal gioco** (menu, "Esci dal gioco", non basta tornare alla selezione del personaggio) e riaprilo. Entra con lo stesso personaggio. Ripeti `/au intensita` e `/au chat`.
   - **Cosa aspettarti:** gli stessi valori.
5. Cerca sul PC il file `AzerothUnspokenDB.lua`, di solito dentro `E:\Blizzard\World of Warcraft\_forever_\WTF\Account\<NOME ACCOUNT>\SavedVariables\`. Un secondo file, `AzerothUnspokenCharacterDB.lua`, sta dentro la cartella del personaggio, sotto `...\WTF\Account\<NOME ACCOUNT>\<Reame>\<Personaggio>\SavedVariables\`.
   - **Cosa riportare:** se i due file esistono e dove sono. Non serve inviarli.
6. Rimetti le impostazioni a posto: `/au intensita 50`, `/au profondita letterario`, `/au chat privato`.

---

## SP-05: la chat (la parte più importante)

Qui si verifica che l'addon non scriva mai da solo in chat con le impostazioni predefinite, e che con un tuo gesto la frase parta davvero. **Fai questa parte in un posto isolato.** Alcuni passi fanno dire una frase vera al tuo personaggio.

### A. Con le impostazioni predefinite

1. Scrivi `/au chat privato`. Poi scrivi, uno dopo l'altro, `/au saluto`, `/au pensiero`, `/au grido`. Poi premi il pulsante rotondo "libro" sullo schermo (il pulsante "pronuncia"), anche più volte.
   - **Cosa aspettarti:** le frasi compaiono **solo nel riquadro del narratore**. Il tuo personaggio **non** dice nulla (nessun fumetto sopra la testa, nessuna riga `[Nome] dice:` in chat).
   - **Cosa riportare:** se in chat compare **qualunque** cosa a nome del tuo personaggio. Questo è un errore grave.
2. Lascia il gioco in esplorazione per qualche minuto: cambia zona, combatti qualche mostro.
   - **Cosa aspettarti:** ogni tanto una frase nel riquadro. Mai niente in chat.

### B. Conferma per inviare

3. Scrivi `/au chat conferma`. Poi scrivi `/au saluto`.
   - **Cosa aspettarti:** la scritta in alto nel riquadro dice **"proposta per /s"** (o **"/e"**). Sotto la frase compaiono quattro pulsanti: **Invia**, **Modifica**, **/s** (il canale), **Scarta**. Il pulsante "libro" sullo schermo si illumina. In chat non succede nulla.
   - **Cosa riportare:** se i pulsanti mancano o sono sovrapposti.
4. **Lascia passare 30 secondi** senza toccare nulla.
   - **Cosa aspettarti:** la proposta scade e il riquadro si chiude da solo. Il pulsante "libro" si spegne.
5. Fai comparire una nuova proposta (`/au saluto`) e premi **Invia** nel riquadro (oppure il pulsante "libro").
   - **Cosa aspettarti:** la frase compare **in chat** come detta dal tuo personaggio (`/s`) o come emote (`/e`), con il fumetto sopra la testa se è `/s`. Il riquadro mostra "inviato in /s".
   - **Cosa riportare (importante):** se **non** compare nulla in chat, oppure compare una finestra "Azeroth Unspoken ha tentato un'azione che è stata bloccata" (ADDON_ACTION_FORBIDDEN). Scrivi anche `/au debug`: la riga `Chat Gateway` indica `last refusal`. Fai screenshot.
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

13. Scrivi `/au chat anteprima` e fai comparire una proposta. Premi il tasto "conferma" (o il pulsante "libro").
    - **Cosa aspettarti:** **non** invia: apre la casella di modifica con il testo. Premendo **Invio** nella casella, la frase parte.
    - **Cosa riportare:** se invia subito.

### E. Automatico, dove permesso (facoltativo, ma utile)

L'invio automatico non si accende con un clic solo (issue #8): serve un avviso e una conferma entro 10 secondi.

Questa modalità fa scrivere l'addon da solo **solo emote** e, nelle istanze, `/say`. Provala solo se vuoi: è proprio per scoprire cosa permette il client.

14. Scrivi `/au chat auto`: compare un **avviso** e la modalità **non** cambia. Scrivi di nuovo `/au chat auto` entro 10 secondi: ora è attiva. Poi `/au prob zone 100` e `/au cooldown 0`. Cammina fino a un'altra zona.
    - **Cosa aspettarti:** una **emote** compare in chat da sola (`Nome sospira…`), oppure una proposta per `/s` che resta in attesa. Non deve comparire nessun `/say` da solo nel mondo aperto.
    - **Cosa riportare:** se compare un `/say` da solo (errore grave); se l'emote non parte e `/au debug` mostra `last refusal error` (vuol dire che il client blocca anche le emote automatiche).
15. (Solo se entri in un'istanza) Rifai il passo 14 dentro l'istanza.
    - **Cosa aspettarti:** può partire un `/say` da solo, poche volte al minuto.
16. **Rimetti tutto a posto:** `/au chat privato`, `/au prob zone 40`, `/au cooldown 45`.

---

## Q2: correzioni da verificare in gioco (aggiunto dalla correzione Q2)

Corrette fuori dal gioco le issue #3, #4, #5, #6, #8, #11, #12, #14, #17 e #19. Restano da provare nel client vero:

20. **Nella chat (issue #14, la prova più utile).** Scrivi `/au chat conferma` e `/au saluto`. Sotto la frase, accanto a **Invia**, compare **Nella chat**. Premilo.
    - **Cosa aspettarti:** si apre la casella della chat già su `/s` (o `/e`) con la frase dentro, **senza che l'addon invii nulla**. Premi tu Invio: la frase parte come se l'avessi scritta a mano. Il riquadro si chiude (la proposta è scartata dopo la copia).
    - **Cosa riportare:** se il pulsante non c'è (vuol dire che `ChatFrame_OpenChat` manca: guarda `/au debug full`, riga `api:OpenChat`); se la casella si apre ma è vuota o sul canale sbagliato; se `/s` da lì funziona anche quando "Invia" non funzionava (passo 5): è il confronto che decide se il Chat Gateway deve privilegiare questa strada. Prova anche `/au copia`.
21. **Testo per canale (issue #5).** Scrivi `/au canale say`, poi `/au chat conferma` e fai comparire una proposta **narrativa** (azioni come "lancia la lenza…": prova `/au evento zone` o `/au grido` più volte). Premi **Invia**.
    - **Cosa aspettarti:** in `/s` esce **con il tuo nome davanti** ("Nome lancia la lenza…"), non senza soggetto. Poi `/au canale emote` e una frase **parlata**: esce come "Nome dice: «…»", non come "Nome Frase". Il riquadro mostra già il testo che partirà e si aggiorna se cambi canale con il pulsante.
    - **Cosa riportare:** testi senza soggetto o senza virgolette. Rimetti `/au canale auto`.
22. **L'editor non scade (issue #4).** Con `/au chat anteprima` fai comparire una proposta, premi il tasto "pronuncia" (si apre l'editor) e **aspetta 40 secondi** scrivendo qualcosa a metà.
    - **Cosa aspettarti:** l'editor resta aperto e il testo non si perde; Invio lo spedisce. Se chiudi l'editor con Esc la proposta resta ancora circa 25 secondi.
    - **Cosa riportare:** se l'editor si chiude da solo.
23. **Invio automatico: due gesti (issue #8).** Apri `/au opzioni`: la riga **Modalità chat** scorre solo privato, anteprima e conferma. La riga **Invio automatico** al primo clic mostra l'avviso in chat e il testo "clic di nuovo per confermare"; al secondo clic si accende. Nella procedura guidata (`/au benvenuto`, ultimo passo) il pulsante "automatica" funziona allo stesso modo.
    - **Cosa riportare:** se un solo clic basta, o se il testo del pulsante non cambia.
24. **Il mouse sopra il riquadro (issue #17).** Fai comparire una frase (`/au narratore`) e tieni il mouse **sopra il testo** durante la dissolvenza.
    - **Cosa aspettarti:** il riquadro resta visibile finché il mouse è sopra. Quando lo sposti svanisce.
    - **Cosa riportare:** se svanisce comunque (vuol dire che `IsMouseOver` non esiste neppure come metodo del frame).
25. **Bersaglio dall'identità segreta (issue #6, SP-02).** In un luogo dove il client nasconde l'identità dei bersagli (combattimento in un incontro o in un'istanza con restrizioni, se esiste) seleziona un bersaglio e scrivi `/au debug full`.
    - **Cosa aspettarti:** la riga `value:target.identity` è `RESTRICTED`; nessun errore rosso; le frasi di battaglia escono lo stesso, senza il nome del bersaglio.
    - **Cosa riportare:** errori rossi con un bersaglio segreto; la riga `value:target.identity`.
26. **Capacità nuova.** Con `/au debug full` controlla la riga `api:OpenChat` (`ChatFrame_OpenChat`): `AVAILABLE` o `MISSING`.

## S3: i testi e il validatore (aggiunto dallo step S3)

Poca roba, ma solo il client vero può dire che i file dei testi (UTF-8) e il comando si comportano come fuori dal gioco.

17. Scrivi `/au valida`.
    - **Cosa aspettarti:** `Validatore: 428 frasi in 9 pacchetti, 860 varianti: 0 errori, 0 avvisi.` e `Nessun problema trovato.`
    - **Cosa riportare:** il numero di errori e avvisi, e le righe che compaiono se non sono zero. Con il pacchetto di esempio spento (`/au pacchetto example off`) le frasi sono 421.
18. Scrivi `/au info`, poi `/au lingua it` e `/au prova zone`, quindi `/au lingua en` e `/au prova zone`.
    - **Cosa aspettarti:** `428 frasi disponibili in Italiano`; le frasi di prova con **le lettere accentate giuste** (à è ì ò ù, «virgolette») in italiano e in inglese.
    - **Cosa riportare:** lettere sbagliate (per esempio `Ã¨` al posto di `è`): vuol dire che un file dei testi non è letto come UTF-8.
19. Con `/au profondita naturale`, poi `elevato`, scrivi qualche volta `/au prova battle`.
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
29. Prova l'intensità: `/au intensita 0` e combatti un po' (nessuna frase spontanea, ma `/au saluto` funziona); poi `/au intensita 100` (frasi più frequenti, mai a raffica).
    - **Cosa riportare:** se a 0 compare qualcosa da solo, o se a 100 il ritmo è insopportabile.
30. **Filmati.** Se puoi, guarda una cinematica (per esempio quella iniziale di una razza con un personaggio nuovo, o un filmato di un'area) durante un evento che di solito fa parlare il narratore.
    - **Cosa aspettarti:** nessuna frase durante il filmato.
    - **Cosa riportare:** con `/au debug full`, le righe `api:InCinematic` e `api:IsInCinematicScene` (`AVAILABLE` o `MISSING`).
31. **Combattimenti impegnativi.** In un dungeon, contro un élite o un boss (o in incursione), ascolta il narratore.
    - **Cosa aspettarti:** durante lo scontro nessuna frase di battaglia o di atmosfera (in `/au debug`: `battle=busy`); morte e ritorno in vita parlano ancora.
    - **Cosa riportare:** frasi comparse durante uno scontro impegnativo, e se un boss è stato riconosciuto come tale.

32. **Il profilo del personaggio.** Scrivi `/au anima` (o apri le impostazioni e premi "Anima del personaggio...").
    - **Cosa aspettarti:** si apre una finestra con l'archetipo, sette righe di tratti (ognuna con il suo pulsante e la fonte: scelta, Total RP 3 o neutro), gli otto argomenti da evitare e, in basso, "Profilo neutro" e "Chiudi". Il pulsante di Total RP 3 compare solo se l'addon c'è. Si può spostare trascinandola.
    - **Cosa riportare:** se i testi stanno nei pulsanti (niente parole tagliate), se la finestra sta nello schermo, se i pulsanti `+`, `-` e `x` rispondono, se `/au anima` la chiude di nuovo.
33. **Il carattere cambia le frasi.** Scegli l'archetipo "Veterano disilluso", poi (sempre con il pulsante) "Viaggiatore ottimista". Dopo ogni scelta scrivi `/au pensiero` e `/au grido` alcune volte, ed entra in una capitale.
    - **Cosa aspettarti:** il cambio vale subito, senza `/reload`. Con il veterano in una capitale puoi sentire «Ogni strada conduce a casa...», con il viaggiatore «Le sue porte sono ancora aperte...». Frasi di tono ironico per l'ironia alta, più sobrie per quella bassa. Con le sole 16 frasi di esempio la differenza è piccola: contano il ripetersi e l'assenza di contraddizioni.
    - **Cosa riportare:** se una frase ti è sembrata in contrasto con il carattere scelto, e quale.
34. **Argomenti da evitare.** Accendi "famiglia" e "sangue" (o `/au anima evita famiglia`, `/au anima evita sangue`). Scrivi `/au pensiero` una ventina di volte e fai scendere la salute del personaggio.
    - **Cosa aspettarti:** mai «Chissà se a casa qualcuno accende ancora una candela per me» né «Il sangue mi scorre tra le dita...».
    - **Cosa riportare:** se compare una frase che tocca un argomento spento. È il caso più grave: riportala per intero.
35. **Voce interiore spenta.** `/au anima voce spenta` e poi `/au pensiero` e `/au evento muse` alcune volte (poi `/au anima voce -` per toglierla).
    - **Cosa aspettarti:** nessuna frase con l'etichetta "Voce interiore" nel narratore; compaiono quelle del personaggio o del narratore, oppure niente.
    - **Cosa riportare:** frasi con l'etichetta "Voce interiore" comparse a voce spenta.
36. **Profilo neutro.** `/au anima neutro`, poi `/au anima lista`.
    - **Cosa aspettarti:** tutti i tratti "non impostato (neutro)", e il narratore si comporta come prima. Nessuna preghiera del devoto, nessun «tutto mi è stato tolto»: sono le frasi che affermano un credo o un passato e il profilo neutro non le sente.
37. **Total RP 3** (solo se è installato; altrimenti scrivilo e passa oltre). Nel tuo profilo TRP3 imposta qualche tratto psicologico, per esempio "Gentile/Brutale" tutto a sinistra e "Superstizioso/Razionale" tutto a destra. Poi `/au anima trp3 on` e `/au anima lista`.
    - **Cosa aspettarti:** Temperamento "Misericordioso (Total RP 3)" e Fede "Scettico (Total RP 3)"; con `/au anima trp3 off` tornano "neutro". Una scelta fatta a mano ha sempre la precedenza. Senza il consenso l'addon non legge i tratti.
    - **Cosa riportare:** le righe `integration:totalRP3` e `integration:totalRP3:traits` di `/au debug full`, e se i tratti letti corrispondono a quelli impostati (gli ID dei tratti di TRP3 non sono stati provati con un profilo vero). Se compare un errore rosso con TRP3 installato, uno screenshot.
38. **Il profilo resta.** Scegli un archetipo e un argomento da evitare, fai `/reload`, poi esci e rientra.
    - **Cosa aspettarti:** `/au anima lista` mostra le stesse scelte dopo entrambi.
    - **Cosa riportare:** se qualcosa è tornato neutro.

39. **Prima visita e diario.** Con un personaggio mai stato in una zona (o dopo `/au diario dimentica <zona>`), entra in una zona nuova, meglio una foresta (Elwynn Forest, Teldrassil...). Poi `/au diario`.
    - **Cosa aspettarti:** dopo qualche secondo una frase di prima volta (es. «Mai prima d'ora i miei passi hanno toccato questo suolo...»); il diario ha un ricordo «Prima visita: <zona>», la zona nella scheda *Luoghi* con «1 visite» e nessun errore rosso. Il diario si apre, si sposta, mostra le quattro schede, i pulsanti `P` (permanente) e `x` (cancella) rispondono.
    - **Cosa riportare:** se la frase di prima volta è comparsa, se il nome della zona nel diario è quello giusto (client inglese: nomi inglesi), se il testo sta nei pulsanti e nelle righe, se il diario si può richiudere con `/au diario`.
40. **Ritorno.** Esci dalla zona, aspetta almeno 10 minuti (o un giorno, per avere il ricordo salvato) ed entra di nuovo. Il richiamo ha il 70% di probabilità (per l'intensità 50): se non compare al primo ritorno, riprova con un'altra zona; `/au prob memory_return 100` lo rende certo per la prova.
    - **Cosa aspettarti:** dopo qualche secondo una frase di richiamo (es. «Rieccomi. Questa foresta mi conosce già.») e **una sola frase**, non due insieme; in `/au debug` (riga Narrative Director) `memory_return=spoken` e `zone=outranked`. Il luogo ora dice «2 visite». Con un ritorno dopo un giorno compare anche un ricordo «Ritorno» nel diario; entro il giorno solo nella scheda *Sessione*.
    - **Cosa riportare:** se la frase di richiamo è comparsa, se è arrivata insieme a un'altra, e dopo quanto tempo dal cambio di zona.
41. **Una visita finita male.** In una zona fatti uccidere (o lasciala in combattimento, o con poca salute). Esci, aspetta almeno 10 minuti e rientra.
    - **Cosa aspettarti:** il diario ha un ricordo «Morte: <zona>» (o «Fuga: <zona>»), la prima morte vale più delle altre (flag `first_death` nella scheda *Flag*); al ritorno può uscire una frase che lo cita («L'ultima volta che ho messo piede in <zona> sono caduto...»). Con `/au anima evita morte` quella frase non esce mai.
    - **Cosa riportare:** se una frase cita una morte o una fuga che **non** c'è stata (è il caso più grave: riportala per intero), e se la fuga è stata riconosciuta quando era giusto (e non quando non lo era: per esempio al rilascio dello spirito).
42. **Livelli e capitali.** Sali di livello e, se puoi, entra per la prima volta in una capitale.
    - **Cosa aspettarti:** un ricordo «Livello raggiunto N» (ogni 10 livelli anche il flag `level_N`); la capitale come prima visita più importante e il flag `first_capital`.
    - **Cosa riportare:** se compaiono ricordi che non dovrebbero (ingressi ripetuti nella stessa zona, uno per ogni clic): non deve succedere.
43. **Persistenza.** Con qualche ricordo, `/reload`; poi esci dal gioco e rientra.
    - **Cosa aspettarti:** `/au diario lista` mostra gli stessi ricordi, luoghi e flag dopo entrambi; un `/reload` nella stessa zona **non** conta una visita nuova.
    - **Cosa riportare:** ricordi o luoghi scomparsi dopo `/reload` o dopo l'uscita, o visite contate due volte. Dopo un arresto anomalo del client i ricordi dell'ultima sessione possono mancare (le SavedVariables si scrivono solo a `/reload` o alla chiusura): non è un errore dell'addon, ma segnalalo.
44. **Cancellare, rendere permanente, esportare.** Nel diario cancella un ricordo, segna `P` un altro, poi premi *Esporta* (o `/au diario esporta`).
    - **Cosa aspettarti:** il ricordo cancellato sparisce; quello permanente porta `[P]`; la finestra di esportazione mostra il testo **già selezionato** e Ctrl+C lo copia (incollalo in un blocco note); Esc la chiude. *Dimentica tutto* chiede un secondo clic entro 6 secondi.
    - **Cosa riportare:** se la finestra di esportazione si apre e scorre (o solo un pezzo del testo è visibile), se Ctrl+C copia, se un testo scritto lì dentro si cancella da solo (deve rimanere com'era).
45. **Niente di troppo.** Gioca dieci minuti normalmente (combattimenti, incantesimi, bersagli diversi, qualche cambio di zona).
    - **Cosa aspettarti:** nessun ricordo nuovo oltre a prime visite, ritorni lunghi, morti, fughe e livelli; il narratore non si fa più loquace per via dei richiami (al massimo uno per ritorno).
    - **Cosa riportare:** quanti ricordi nuovi sono comparsi nel diario e di che tipo; se un richiamo ti è sembrato troppo frequente.

---

## Modulo riassuntivo (copia e compila)

```
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
S3 /au valida ........... errori ___  avvisi ___  accenti giusti (IT/EN)? ___  profondità: differenza notata? ___
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
Altro (strano, brutto, fastidioso): ______________________
```

Grazie. Con questi risultati sistemo ciò che il client vero ha smentito, prima di scrivere i prossimi pezzi (schema dati, Narrative Director).
