# 0017. Living Memory: ricordi selettivi, richiamo onesto, diario manuale

- Stato: accettata
- Data: 2026-10-29 (step S6; GDD §7.4, §10, §11.5, §12.2, §21 A e C; ADR 0006, 0014, 0015, 0016)

## Contesto

Fino a S5 la sola memoria dell'addon era quella anti-ripetizione delle frasi (`cdb.memory`). Il GDD (§7.4) chiede una continuità vera tra le sessioni: «La tua ultima visita finì male» è ammissibile **solo** se esiste un ricordo corrispondente. Servono tre livelli (episodico della sessione, personale persistente, flag narrativi), al massimo 500 ricordi ordinari per personaggio con compattazione, ricordi permanenti, esportazione testuale manuale, reset e migrazioni versionate. Il vertical slice A (arrivo nella foresta) e C (ritorno nella foresta, journal aggiornato) dipendono da questo. Due vincoli del progetto pesano più degli altri: nessun salvataggio indiscriminato (e **nessuna trascrizione di chat o di whisper**, nessun dato di altri giocatori), e l'addon non può scrivere file.

Gli step S6b (relazioni) e S6c (interlocutore e luogo) useranno memoria e diario, e S9 (archi narrativi) i flag.

## Decisione

1. **Tre livelli, un solo modulo** (`Systems/LivingMemory.lua`, `NS.LivingMemory`):
   - *episodico di sessione*: i momenti significativi di questa sessione, solo in memoria (al massimo 60), con un id negativo; non si salvano e si perdono alla chiusura;
   - *personale persistente*: `AzerothUnspokenCharacterDB.memories = { version, nextId, entries, places, flags, stats }`;
   - *flag narrativi*: `memories.flags[nome] = { t, source }`, impostati dal gioco (`first_death`, `first_capital`, `level_10`…), dall'utente (`/au diario flag`) o da altri sistemi (`LM:SetFlag`, per S9).
2. **Si ricordano solo momenti significativi**, mai ogni clic:
   - **prima visita** a una zona (importanza 3, 4 per una capitale);
   - **ritorno** dopo almeno un giorno (importanza 2, salvato); un ritorno più vicino (ma oltre 10 minuti dall'uscita) è un momento della sessione (importanza 1) e non si salva; rientrare entro 10 minuti, o ricaricare l'interfaccia, **continua la stessa visita**;
   - **visita finita male**: una morte (importanza 3, 4 per la prima) o una **fuga**, cioè uscire da una zona in combattimento o con meno del 35% di salute, ma non da morti e mai con un valore illeggibile (valori segreti: nessuna decisione);
   - **livelli** (2; ogni dieci un traguardo, 4, con flag).
   Sono eventi del bus già normalizzati (`WORLD_ENTER`, `ZONE_ENTER`, `PLAYER_DEATH`, `LEVEL_UP`): la memoria non registra nuovi eventi del client e non si abbona alla chat.
3. **Campi del ricordo** (§7.4): `id`, `t` (epoch, secondi), `zone`, `kind`, `importance` (1–5), `tags`, `source` (`auto` | `user` | `addon`), più `level` e `perm`. `Record` copia **solo** questi campi (tag brevi in minuscole ASCII, al massimo sei, zona al massimo 64 byte senza spezzare l'UTF-8) e `Sanitize` li riapplica ai dati salvati: nessun testo libero, nessun altro campo può restare. Il «consenso alla condivisione» del GDD non si salva finché non c'è il modulo Social (S10): assente vale *no*.
4. **Luoghi** (`memories.places[zona]`): prima e ultima visita, numero di visite, morti, esito della visita e com'era finita la precedente. Sono dati a parte dai ricordi: compattare i ricordi non toglie il sapere che si è già stati in un luogo. Si tengono al massimo 300 luoghi (i meno recenti si dimenticano). La chiave è il nome della zona nella lingua del client (il `mapID`, più robusto, arriverà con S6c).
5. **Limiti**: al massimo **500 ricordi ordinari** (non permanenti). Oltre il limite la **compattazione** toglie i meno significativi (importanza più bassa e, a parità, i più vecchi) fino a 450, così non si ripete a ogni ricordo, e conta quanti ne ha tolti (`stats.compacted`). I **permanenti** (al massimo 200) non si compattano mai. `Reset` ha cinque bersagli (`all`, `memories`, `ordinary`, `places`, `flags`).
6. **Richiamo onesto**, in tre strati:
   - le condizioni delle frasi `firstVisit`, `repeatVisit`, `lastVisitBad` (`true`/`false` o `"death"`/`"flight"`), `visitsMin`/`visitsMax`, `daysSinceLastVisit` (numero = almeno, `{ da, a }` = intervallo) e `remembered = "<flag>"` leggono `ctx.memory`, costruito solo da dati veri (`LM:Context`); senza memoria (modulo spento, nessun dato sul luogo, dati di una versione più nuova) ogni condizione vale **falsa**;
   - gli **eventi di richiamo** (`LM:RegisterRecall(evento, verifica)`, oggi `memory_return`) hanno una **guardia nel motore** (`Engine:SetEventGuard`, controllata da `PickEntry`): se `verifica(memoria, ctx)` non conferma il ricordo, l'evento non produce alcuna frase, qualunque via lo abbia chiesto, anche un comando manuale;
   - il **validatore** (`recallWithoutMemory`) esige che ogni frase di un evento di richiamo dichiari una condizione di memoria (anche dentro `any`, mai solo dentro `not`).
   Cancellare il ricordo di una morte toglie anche l'esito «finì male» del luogo: l'addon non cita ciò che l'utente ha dimenticato.
7. **Priorità del §10**: `LM:RegisterRecall` imposta la priorità «richiamo di memoria» (`NS:SetEventPriority(evento, "memory")`) e il modulo `memory` per il gate. Il ritorno in un luogo noto è un candidato `memory_return` offerto 3 secondi dopo l'ingresso, come l'atmosfera `zone`; nel Director il richiamo (priorità 2) batte l'atmosfera (1) e parla una sola frase. La **prima visita** non è un richiamo ma atmosfera: usa l'evento `zone` con la condizione `firstVisit`. La memoria si scrive anche a intensità 0 o in pausa: il narratore tace, ma i ricordi no.
8. **Diario** (`UI/JournalFrame.lua`, `/au diario`, alias `/au journal` e `/au diary`): schede *Ricordi*, *Luoghi*, *Flag* e *Sessione*, elenco a pagine con solo pulsanti standard, cancellazione selettiva, ricordo permanente, dimenticare un luogo, «Dimentica tutto» con conferma. Le schede sono dati (`JournalFrame:RegisterTab`): S6b ci aggiunge le relazioni. **Esportazione manuale**: `LM:ExportText` produce il testo e una finestra con una casella a più righe già selezionata lo mostra per Ctrl+C (in sola lettura); con la finestra non costruibile, le prime 40 righe vanno in chat locale.
9. **SavedVariables schema 4**: la migrazione 4 del personaggio trasforma il segnaposto vuoto in `memories` (le tabelle rovinate ripartono da zero); `memories.version` ha migrazioni proprie (`LM.migrations[n]`) e `LM:Sanitize` scarta le voci malformate, duplicate o con campi sbagliati e porta `nextId` oltre il massimo. Dati con `memories.version` più nuova **non si toccano**: la memoria passa in sola lettura (nessuna registrazione, nessuna cancellazione) e lo dice in diagnostica. La memoria non pubblica mai nulla: i richiami passano dal Director e dal Chat Gateway come ogni altra frase.
10. **Il tempo**: i ricordi usano `time()` (epoch); l'orologio che torna indietro non produce giorni negativi (valgono zero). La fine della visita in corso si aggiorna ogni 5 minuti (`C_Timer.NewTicker`, se esiste) perché una disconnessione o un `/reload` non perdano la visita; le SavedVariables si scrivono su disco solo a `/reload` o alla chiusura (GDD §7.4), quindi dopo un arresto anomalo del client i ricordi dell'ultima sessione possono mancare.

## Alternative considerate

- **Un ricordo per ogni ingresso in zona.** Satura il limite in pochi giorni e riempie il diario di rumore. Qui i ritorni vicini restano solo nella sessione e le visite contano nei luoghi.
- **Salvare le frasi dette.** Mai: è una trascrizione di ciò che il narratore ha scritto e, peggio, avvicina la memoria alla chat. Si salva *che cosa è successo*, non *che cosa è stato detto*.
- **Guardia solo con una condizione automatica** (aggiungere implicitamente `repeatVisit` alle frasi di richiamo). Nasconde la regola agli autori dei contenuti e non copre un comando manuale; la guardia sull'evento e l'obbligo del validatore sono espliciti e si provano.
- **Compattare unendo più ricordi in uno riassuntivo.** Più elegante ma produce testo generato da conservare e tradurre; per ora si tolgono i meno significativi e si tengono i conteggi nei luoghi.
- **Esportare in un file.** Non si può: l'addon non scrive file. La finestra copiabile è il compromesso previsto dal GDD («esportazione testuale manuale»).

## Conseguenze

- Positive: il vertical slice A e C è possibile (prima visita, ritorno, diario aggiornato) e un ricordo non si cita mai se non esiste; chi scrive contenuti ha condizioni chiare e un validatore che lo guida; S6b e S9 usano diario, flag e guardie senza toccare il Director.
- Negative o costi:
  - le soglie (10 minuti, un giorno, 35% di salute, 500 e 450 ricordi, importanze) sono ipotesi da regolare con le prove in gioco ([G1](../G1_checklist.md), passi 39–45);
  - **nulla è stato provato nel client vero**: né la scrittura delle SavedVariables a `/reload` e alla chiusura, né gli eventi di zona di un caricamento, né l'aspetto della finestra del diario e della casella di esportazione;
  - la chiave dei luoghi è il nome della zona nella lingua del client: cambiare lingua del client crea luoghi «nuovi»;
  - il riconoscimento della fuga è euristico (combattimento o poca salute al cambio di zona);
  - i dati di una versione più nuova rendono la memoria inutilizzabile finché non si torna a una versione compatibile.

## Riferimenti

- GDD §7.4, §10, §11.5, §12.2, §21.
- `Systems/LivingMemory.lua`, `UI/JournalFrame.lua`, `Engine/RuleEngine.lua` (condizioni di memoria), `Engine/WeightedSelector.lua` (`SetEventGuard`), `Engine/Validator.lua` (`recallWithoutMemory`), `Data/RegistryMemory.lua` (frasi di esempio).
- [ADR 0006](0006-savedvariables-e-versioni-dello-schema.md), [ADR 0015](0015-narrative-director-un-intervento-per-momento.md), [ADR 0016](0016-character-soul-tratti-opt-in-e-total-rp-3-con-consenso.md).
- `Tests/TestMemory.lua` e la sezione «persistenza della memoria» di `Tests/run_tests.py`.
