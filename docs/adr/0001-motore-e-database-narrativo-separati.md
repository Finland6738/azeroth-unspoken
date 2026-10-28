# 0001. Motore e database narrativo separati, con frasi curate e non generate

- Stato: accettata
- Data: 2026-10-29 (la decisione è del prototipo e della [roadmap](../../ROADMAP.md), "Decisioni già prese", n. 1)

## Contesto

Un addon narrativo vive dei suoi testi. Il prototipo `VociDiAzeroth` (ora in `archive/`) aveva già un motore che sceglie le frasi e un database di 374 frasi in italiano e inglese. Servivano due garanzie: che il codice potesse evolvere senza riscrivere i testi, e che i testi fossero buoni (GDD §5.4, §9).

Il rischio di un addon di questo tipo è produrre frasi sgrammaticate, ripetitive o incoerenti con il momento, come capita quando si compongono frammenti a caso.

## Decisione

1. **Il motore non contiene testi.** `Core/`, `Engine/`, `Systems/`, `Integration/` e `UI/` leggono solo ciò che i pacchetti registrano con `AzerothUnspoken:RegisterPack`. I testi dell'interfaccia stanno a parte, in `Data/<lingua>/Interface.lua`.
2. **Il database contiene frasi intere, scritte a mano.** Una frase è un'unità completa, con il proprio evento, tono, peso, pausa e condizioni. Il motore la sceglie, non la costruisce.
3. **Sono ammessi solo due meccanismi di variazione controllata**, perché sono formule complete e scelte per contesto: i segnaposto (`{target}`, `{zone}`, `{g:m|f}`…) e il vocabolario (voci brevi e intere come un grido di guerra adatto alla razza), più le *cornici narrative* che incorniciano una frase parlata come emote. Non si concatenano mai frammenti incompatibili (GDD §5.2).
4. **I pacchetti di base e quelli di terzi usano la stessa API.** Quelli di base stanno in `AzerothUnspoken/Data/`; gli altri sono addon separati che dipendono da `AzerothUnspoken` (vedi `AzerothUnspoken_Example` e [FORMATO_PACCHETTI.md](../../AzerothUnspoken/FORMATO_PACCHETTI.md)).
5. Se per un evento nessuna frase è adatta, **il silenzio è un esito valido**: non si improvvisa.

## Alternative considerate

- **Generare il testo componendo frammenti** (soggetto + azione + aggettivo). Dà molta varietà con pochi dati, ma produce frasi che suonano meccaniche, sbagliano il genere o il registro e non si possono rivedere una per una. Scartata.
- **Testi dentro il codice** (come tabelle nei file del motore). Semplice all'inizio, ma impedisce i pacchetti di terzi e le traduzioni indipendenti, e mescola il lavoro del programmatore con quello dell'autore. Scartata.
- **Generazione con un modello linguistico.** Vedi [ADR 0002](0002-tutto-offline-senza-ia.md).

## Conseguenze

- Positive:
  - ogni frase si rilegge, si corregge e si traduce da sola;
  - i pacchetti si possono scrivere senza toccare il motore;
  - la qualità è una questione editoriale (regole in [CONTRIBUTING.md](../../CONTRIBUTING.md) e GDD §5.4), che il validatore previsto nello step S3 controllerà in parte (id duplicati, lingue mancanti, segnaposto discordanti…).
- Negative:
  - la varietà dipende dalla quantità di frasi scritte: servono molti contenuti (step S7 e S11 della roadmap);
  - serve disciplina per mantenere separati motore e dati quando le funzioni crescono (ad esempio, le etichette delle relazioni dovranno stare in dati, non nel codice).
- Lo step S3 introduce uno schema dati v2 (registro delle regole separato dai testi per lingua) che porta questa separazione più avanti, senza cambiarne il principio.

## Riferimenti

- GDD §5.2, §5.4, §9, §11.1.
- [docs/ARCHITETTURA.md](../ARCHITETTURA.md), [FORMATO_PACCHETTI.md](../../AzerothUnspoken/FORMATO_PACCHETTI.md).
- `Engine/PhraseRegistry.lua`, `Engine/WeightedSelector.lua`.
