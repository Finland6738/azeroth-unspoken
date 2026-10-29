# 0011. Il nome Azeroth Unspoken

- Stato: accettata
- Data: 2026-10-29 (da [ROADMAP.md](../../ROADMAP.md), intestazione, e step S1)

## Contesto

La specifica di prodotto (GDD) chiama il progetto **Immersion Director**; il prototipo si chiamava **Voci di Azeroth**. Il primo è un nome di lavoro generico, il secondo è solo italiano e il progetto è nato bilingue. Il nome compare in molti punti: cartella, `.toc`, variabili salvate, comandi, interfaccia, documentazione, repository.

## Decisione

- Il prodotto si chiama **Azeroth Unspoken**, con il motto *An immersive roleplay companion for World of Warcraft* e la descrizione breve: "Un compagno narrativo immersivo per World of Warcraft, distintivo e misterioso, che richiama i pensieri e le storie non espresse."
- Dove GDD e roadmap non coincidono, vale la roadmap. Il GDD conserva il vecchio nome "Immersion Director" e non si riscrive: si legge sostituendo il nome.
- **Identificatori derivati** (stabili: cambiarli costerebbe dati e compatibilità):
  - cartelle `AzerothUnspoken/` e `AzerothUnspoken_Example/`;
  - spazio dei nomi globale `AzerothUnspoken` (API pubblica per pacchetti, macro e diagnostica);
  - SavedVariables `AzerothUnspokenDB` (account) e `AzerothUnspokenCharacterDB` (personaggio);
  - comandi `/unspoken` e `/au`;
  - nomi dei tasti `AZEROTHUNSPOKEN_SPEAK` e `AZEROTHUNSPOKEN_PAUSE`.
- `/au` e `/unspoken` non sono usati dagli addon installati nel client di riferimento (Details: `/details /dt /de`; Total RP 3: `/trp3`; QuestIT: `/qit`). **Non è stato verificato** contro i comandi interni di Blizzard né contro altri addon.
- Il prototipo resta in `archive/VociDiAzeroth*/` solo come riferimento storico.
- Il nome contiene "Azeroth", termine del mondo di Blizzard. Il README dichiara che il progetto è di fan, indipendente e non affiliato né approvato da Blizzard.

## Alternative considerate

- **Mantenere "Immersion Director".** Descrive la funzione di regia, ma è generico, poco distintivo e si confonde con altri prodotti.
- **Mantenere "Voci di Azeroth".** Solo in italiano; non rende l'idea di ciò che resta non detto.
- **Un nome senza riferimenti al gioco.** Più sicuro sotto il profilo dei marchi, ma perde la chiarezza per chi cerca un addon di WoW.

## Conseguenze

- Positive: un nome unico, bilingue, coerente in tutti i punti; comandi brevi (`/au`).
- Negative: il GDD resta con il vecchio nome; cambiare gli identificatori in futuro richiederebbe una migrazione delle SavedVariables ([ADR 0006](0006-savedvariables-and-schema-versions.md)); l'uso del termine "Azeroth" nel nome va tenuto d'occhio se si pubblica su piattaforme di distribuzione.

## Riferimenti

- [ROADMAP.md](../../ROADMAP.md), [README.md](../../README.md).
- `AzerothUnspoken/AzerothUnspoken.toc`, `UI/Commands.lua`.
