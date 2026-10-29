# 0015. Narrative Director: un intervento per momento, pesi moltiplicativi, stile che pesa e non esclude

- Stato: accettata
- Data: 2026-10-29 (step S4; GDD §4.2, §5.2, §6, §10, §15)

## Contesto

Fino allo step S3 ogni evento narrativo decideva da solo se parlare: probabilità, pausa globale e pausa dell'evento in `Systems/Triggers.lua`, con l'intensità come semplice moltiplicatore (`Director:Evaluate`, ADR 0014). Mancavano le priorità del GDD §10, un budget per categoria, la sospensione nei momenti impegnativi e una regola contro le cascate: una morte con la salute già bassa, o un livello all'inizio di un combattimento, potevano produrre più frasi nello stesso istante. Il peso delle frasi era una formula unica senza posto per la personalità (S5), le relazioni (S6b), l'interlocutore e il luogo (S6c). I registri (`styles`) erano nei dati ma nessuno li usava, e le cornici delle emote si sceglievano senza guardare il registro della frase.

## Decisione

1. **Decisioni separate dall'uscita.** `Engine/NarrativeDirector.lua` (gate, priorità, sospensione, ordine) ed `Engine/Pacing.lua` (pause e budget) non conoscono il Chat Gateway. `Systems/Director.lua` raccoglie i candidati e passa l'unico vincitore a `Gateway:Narrate`. `Director:Evaluate` resta il punto di aggancio di S2, con la stessa forma di risposta più `priority` e `category`.
2. **Un intervento per momento.** Gli eventi spontanei non parlano subito: `Director:Offer` li mette in coda e `Director:Resolve`, dopo una breve finestra di arbitraggio (0,1 s), li prova in ordine di priorità. Il primo che passa gate, dado e motore parla; gli altri tacciono. In più, il pacing impone `Pacing.MOMENT` (4 s) tra due interventi qualsiasi, anche importanti, e una frase esplicita apre lo stesso momento.
3. **Priorità del §10** come numeri: esplicito 5, dialogo volontario 4, evento eccezionale 3, memoria 2, atmosfera 1. Le richieste esplicite non passano dal Director (come prima). Gli eventi eccezionali (morte, ritorno in vita, livello, resurrezione di un compagno) saltano la pausa globale, quella di categoria e il budget, e la loro probabilità non scende sotto il valore medio; non saltano il momento né le schermate invasive.
4. **L'intensità agisce sul gate e sul budget**, non sullo stile: probabilità × intensità/50, pause × (1,5 − intensità/100), budget per categoria × intensità/50 in una finestra di 10 minuti. A 0 tace tutto ciò che è spontaneo.
5. **Sospensione**: con una cinematica o un filmato (`InCinematic`, `IsInCinematicScene`, frame `CinematicFrame`/`MovieFrame`, tutti protetti) tace tutto; in un combattimento impegnativo (boss, incursione, élite in istanza, controlli aggiunti) tace ciò che non è eccezionale. Si decide solo su dati già letti e leggibili: un valore segreto vale "non lo so", cioè "non impegnativo".
6. **Peso moltiplicativo `W = B × C × P × N × S × R`**, calcolato in `Engine.Factors`. `P` e `R` sono neutri; `C`, `P` e `R` hanno agganci con nome (`Engine:SetWeightHook`) per S5, S6b e S6c. Un aggancio che sbaglia vale 1 e finisce in diagnostica; un fattore 0 esclude la frase (serve a S6b per le frasi incoerenti con il rapporto).
7. **Lo stile pesa e non esclude.** `Engine/StyleResolver.lua` dà un profilo (registri ammessi dall'evento, preferiti da zona e profondità, più la voce della frase) e un'affinità: ×0,5 fuori dall'evento, +25% per ogni preferenza (al massimo tre). Il ripiego neutro è quindi automatico: un evento con sole frasi di un registro "sbagliato" parla comunque. Le cornici possono avere registri e si uniscono solo a frasi di registro uguale o vicino: nessun frammento incompatibile.
8. **Stato del pacing solo in memoria**, per la sessione: nessun campo nuovo nelle SavedVariables e nessuna migrazione.

## Alternative considerate

- **Decidere subito, evento per evento (come prima), con una pausa minima dopo ogni frase.** Più semplice, ma chi arriva per primo vince: una frase di salute bassa ruberebbe il posto a quella della morte un istante dopo.
- **Una coda lunga che rimanda i candidati scartati.** Una frase in ritardo di secondi su un evento passato è peggio del silenzio (GDD §6: una scena può finire senza frase).
- **Budget e pause nelle SavedVariables.** Dopo un `/reload` il budget pieno non fa danni, mentre salvare tempi del client (`GetTime`) tra sessioni non ha senso.
- **Registri come filtro rigido.** Avrebbe prodotto silenzi inattesi finché i contenuti (S7) non coprono ogni registro di ogni evento.
- **Somma pesata dei fattori.** Con il prodotto un fattore 0 esclude davvero e ogni fattore resta leggibile da solo (`Engine:Weight` restituisce la scomposizione).

## Conseguenze

- Positive: una sola frase per momento, priorità leggibili, `/au debug` mostra il budget e le ultime decisioni con il motivo; S5, S6, S6b e S6c si agganciano senza toccare il Director (`Engine:SetWeightHook`, `StyleResolver:SetModifier`, `NarrativeDirector:SetRhythm`, `SetDemandCheck`, `NS:SetEventPriority`).
- Negative: 0,1 s di ritardo in più su ogni frase spontanea; i numeri (budget, pause di categoria, bonus e penalità di stile) sono ipotesi da regolare con le prove in gioco (G1, passi 27–31).
- I test fuori gioco che controllano una frase spontanea devono lasciar passare la finestra di arbitraggio (`ADVANCE`).

## Riferimenti

- GDD §4.2, §5.2, §6, §10, §15.2.
- `Engine/NarrativeDirector.lua`, `Engine/Pacing.lua`, `Engine/StyleResolver.lua`, `Engine/WeightedSelector.lua`, `Systems/Director.lua`, `Systems/Triggers.lua`.
- `Tests/TestNarrativeDirector.lua`, `Tests/TestDirector.lua`.
- [ADR 0014](0014-normalized-event-bus-and-isolated-modules.md) (il Director come punto di aggancio), [ADR 0005](0005-compat-secret-values-and-defensive-events.md) (valori segreti).
