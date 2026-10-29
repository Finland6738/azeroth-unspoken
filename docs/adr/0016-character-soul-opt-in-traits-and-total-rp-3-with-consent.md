# 0016. Character Soul: tratti opt-in come dati, affinità morbida e filtri rigidi, Total RP 3 con consenso

- Stato: accettata
- Data: 2026-10-29 (step S5; GDD §7.1, §8; ADR 0004 e 0015)

## Contesto

Fino a S4 il narratore non sapeva nulla del carattere del giocatore: due personaggi con la stessa razza e classe sentivano le stesse frasi. Il GDD (§7.1) chiede tratti facoltativi che cambiano l'eleggibilità e i pesi senza imporre esiti, un profilo neutro, archetipi pronti, il cambio di profilo immediato e "nessuna frase che contraddica i tag esclusivi". Il fattore `P` del peso e le preferenze di registro erano già predisposti da S4 come agganci neutri. Gli step S6b (relazioni) e S6c (interlocutore) dovranno descrivere con gli stessi strumenti altri soggetti: un NPC, una persona incontrata, il rapporto con loro.

## Decisione

1. **Un modello dei tratti separato dal personaggio.** `Engine/Traits.lua` conosce solo definizioni (`choice`, `scale` con fasce, `set`), profili (`{ [tratto] = valore }` con i soli tratti impostati) e tag. Non sa nulla del giocatore: il Character Soul (`Systems/Personality.lua`) lo usa per il personaggio, S6c lo userà per `ctx.other` (con un ambito di tag proprio, `Traits.RegisterScope`) e S6b per gli assi delle relazioni (scale con fasce).
2. **Tutto opt-in, il profilo neutro è lo stato normale.** Un tratto assente vuol dire "non so", mai "falso". Il profilo neutro lascia ogni fattore a 1 e non aggiunge preferenze di registro: il narratore si comporta come prima di S5.
3. **Otto tratti**: temperamento, morale (`morality`), curiosità (scala), fede, motivazione, ironia (scala), voce interiore e argomenti da evitare (insieme). I valori sono dati nelle definizioni, i nomi sono nelle lingue dell'interfaccia (`trait_<tratto>_<valore>`). Sette archetipi più il neutro (veterano disilluso, viaggiatore ottimista, custode devoto, furfante arguto, studioso, vendicatore, penitente). Scegliere un archetipo copia i suoi tratti nelle scelte esplicite; modificarne uno fa diventare il profilo "personalizzato".
4. **Tag di affinità sulle frasi, nello schema v2.** I tag senza due punti restano descrittivi (come quelli di S3). Con i due punti: `tratto:valore` è un'affinità **morbida** (×1,6 se il profilo ha quel valore, ×0,6 se ne ha un altro, ×1 se il tratto non è impostato; fattore complessivo tra 0,15 e 3, mai zero); `req:tratto:valore`, `not:tratto:valore` e `topic:argomento` sono **filtri rigidi** che escludono la frase (fattore 0). La voce interiore spenta esclude le frasi `inner`; le altre intensità la pesano (×0,5, ×1, ×1,6). Un registro ironico senza tag `irony:` è pesato dall'ironia (×0,5, ×1, ×1,5).
5. **Una frase che afferma qualcosa del personaggio usa `req:`**, una che lo dice con un tono usa l'affinità morbida. Così il profilo neutro non sente mai un passato o un credo che non ha scelto (la preghiera del devoto, la vendetta), e nessuna frase contraddice un tratto esclusivo.
6. **Priorità dei dati** (GDD §8): scelta esplicita > Total RP 3 (con consenso) > dati di gioco > valori neutri, tratto per tratto (`Traits.Merge`). Gli argomenti da evitare si **uniscono** tra le fonti: mai contraddire ciò che una fonte vieta. Il livello "dati di gioco" esiste (`Personality:RegisterGameLayer`) ma S5 non imposta alcuna tendenza: razza, fazione e classe non decidono il carattere (GDD §5.4); S6c può aggiungerne di deboli.
7. **Agganci, nessuna modifica al Director.** Il fattore `P` è `Engine:SetWeightHook("P", "soul", ...)`, le preferenze di registro `StyleResolver:SetModifier("soul", ...)` (temperamento, morale, fede e ironia alta; contro un non morto il misericordioso preferisce il solenne, GDD §5.2). Il contesto espone `ctx.soul` (i soli tratti impostati, condivisi e in sola lettura) e c'è la condizione `soul = { tratto = valore | { valori } }`. Il validatore controlla ogni tag di affinità (`badTag`).
8. **Total RP 3: solo il proprio profilo pubblico, con un consenso a parte.** L'adattatore legge `characteristics/PS` (i tratti psicologici che TRP3 mostra agli altri) con `AddOn_TotalRP3.Player.GetCurrentUser():GetInfo(...)`, verificato sul codice di TRP3 installato, e li mappa su tratti del Soul con una tabella di dati (`TotalRP3.PSYCHO_MAP`): solo le coppie dal significato chiaro, solo oltre una soglia dal centro. Serve il consenso del personaggio (`personality.trp3`, `/au anima trp3 on`, spento per impostazione predefinita) oltre all'interruttore `modules.totalRP3`. Non legge note, informazioni fuori dal personaggio né altri campi, non legge il profilo di altri giocatori (S6c, con un altro consenso) e non scrive mai in TRP3. Se manca, o `GetInfo` non esiste o dà una forma inattesa, risponde `nil` e la capacità `integration:totalRP3:traits` va in `MISSING` con il motivo.
9. **SavedVariables**: schema 3. `personality = { version, archetype, traits, trp3 }` per personaggio; la migrazione 3 crea il profilo neutro da un segnaposto vuoto o rovinato e `Personality:Sanitize` ripulisce i valori all'avvio (un valore sconosciuto si scarta, un numero si limita). I dati di uno schema più nuovo non si toccano (ADR 0006).

## Alternative considerate

- **Tutti i tag come esclusioni rigide.** Un solo comportamento, ma un profilo ricco lascerebbe senza frasi finché i contenuti (S7) non coprono ogni combinazione. Il morbido dà varietà senza silenzi; il rigido serve solo dove una contraddizione sarebbe un errore.
- **Un campo `affinity` separato da `tags`.** Più esplicito, ma il GDD (§7.1, §9.1) e S3 mettono già i tag di affinità nei `tags`; i tag descrittivi esistenti restano validi senza migrare i dati.
- **Mettere i tratti di Total RP 3 in un profilo unico con le scelte.** Perde la fonte (e la priorità del GDD) e rende impossibile "tornare a TRP3" togliendo una scelta.
- **Imporre tendenze per razza, classe o fazione** come dati di gioco. Contraddice il §5.4 del GDD; il livello esiste per S6c, vuoto in S5.
- **Un modello dei tratti dentro `Personality.lua`.** S6b e S6c dovrebbero copiarlo o dipendere dal personaggio del giocatore.

## Conseguenze

- Positive: il personaggio ha una voce propria senza che un profilo vuoto cambi nulla; i filtri rigidi sono testati contro ogni scelta di frase; il modello è già pronto per S6b e S6c (ambiti, scale con fasce, unione delle fonti); se TRP3 cambia si corregge una tabella.
- Negative: i 16 testi di esempio non bastano a far *sentire* i tratti (arrivano con S7, che dovrà anche etichettare le frasi esistenti); gli ID dei tratti predefiniti di TRP3 (`PSYCHO_MAP`) sono quelli del codice installato e **non sono stati provati con un profilo vero** (checklist G1); i fattori 1,6 / 0,6 / 0,5 / 1,5 sono ipotesi da regolare in gioco.
- Un tratto nuovo si aggiunge con `Traits.Define` e le chiavi dell'interfaccia; non serve cambiare il motore.

## Riferimenti

- GDD §5.2, §7.1, §8; ADR 0004 (adattatore TRP3), 0006 (SavedVariables), 0015 (agganci del peso e dello stile).
- `Engine/Traits.lua`, `Systems/Personality.lua`, `Integration/TotalRP3.lua`, `UI/ProfileFrame.lua`, `Tests/TestSoul.lua`.
- ROADMAP: step S5, S6b, S6c.
