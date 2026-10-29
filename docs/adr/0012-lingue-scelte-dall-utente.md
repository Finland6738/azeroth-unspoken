# 0012. Lingue scelte dall'utente, indipendenti dal client

- Stato: accettata
- Data: 2026-10-29 (da [ROADMAP.md](../../ROADMAP.md), "Decisioni già prese", n. 1, e note di S1)

## Contesto

Il client di riferimento di WoW Forever è in inglese, ma l'addon nasce per giocatori italiani, e il roleplay si fa spesso nella lingua in cui si preferisce leggere e scrivere. Legare la lingua dell'addon a quella del client costringerebbe a leggere frasi in inglese anche a chi vuole l'italiano, e viceversa.

## Decisione

1. **La lingua si sceglie nelle impostazioni** (`settings.locale`) e vale per le frasi e per l'interfaccia dell'addon. Non dipende da `GetLocale()`.
2. **Il codice della lingua è quello corto dei pacchetti** (`it`, `en`, `de`…), non quello del client (`itIT`). `Config:NormalizeLocale` accetta anche `itIT`/`enUS` e `IT`, e li riporta al codice corto. Il GDD (§11.4) usava `itIT`; vale la roadmap.
3. **Lingue iniziali**: italiano e inglese. Se un testo dell'interfaccia manca nella lingua scelta, **si ripiega sull'italiano**, poi sulla chiave stessa (`NS:L`).
4. **Le lingue non si mescolano mai**: una frase compare solo nelle lingue in cui è scritta; ogni frase ha un testo per lingua (`it = "…"`, `en = "…"`). Una frase senza testo nella lingua scelta non è eleggibile.
5. **Le lingue sono espandibili da pacchetti**: `AzerothUnspoken:RegisterLanguage("de", { name = "Deutsch", ui = {…} })` aggiunge una lingua; `AddTranslations(lang, mappa)` traduce frasi di altri pacchetti. I testi dell'interfaccia stanno in `Data/<lingua>/Interface.lua` (`itIT`, `enUS`).
6. **Nomi localizzati** di classi, razze, fazioni e tipi di creatura (segnaposto `{class}`, `{race}`…) vengono dalla lingua scelta dall'utente, con la forma di genere (`{g:maschile|femminile}`), non da quella del client.
7. **Le varianti IT ed EN conservano intento e registro**, non sono calchi meccanici (GDD §5.4).
8. **Eccezione**: i nomi dei tasti in *Opzioni → Comandi* (`BINDING_NAME_*`) usano la lingua del client (`GetLocale() == "itIT"` → italiano, altrimenti inglese), perché quella schermata si legge prima che l'utente scelga la lingua dell'addon.

## Alternative considerate

- **Seguire la lingua del client.** Semplice, ma non rispetta la preferenza dell'utente e rende l'addon quasi inutile per chi gioca con un client in una lingua e vuole leggere in un'altra.
- **Mescolare le lingue** (frase in una lingua, ripiego in un'altra). Rompe l'immersione. Meglio il silenzio o un'altra frase.
- **Un solo file di testi con tutte le lingue.** Non scala quando si aggiungono lingue e pacchetti di terzi.

## Conseguenze

- Positive: ogni giocatore legge nella lingua che preferisce; aggiungere una lingua non richiede di toccare il motore.
- Negative:
  - ogni frase nuova va scritta almeno in italiano e inglese per essere completa; chi scrive una lingua nuova deve tradurre le frasi esistenti per vederle;
  - le condizioni che dipendono da nomi (ad esempio `zone = "Duskwood"`) usano i nomi **del client** (inglese), non quelli della lingua dell'utente.
- Lo schema dati v2 (step S3) porterà i testi per lingua in file separati (`Data/itIT/`, `Data/enUS/`) con più varianti per id, e un validatore per le lingue mancanti.

## Riferimenti

- GDD §9.
- `Core/Bootstrap.lua` (`RegisterLanguage`, `NS:L`), `Core/Config.lua` (`NormalizeLocale`), `Data/itIT/Interface.lua`, `Data/enUS/Interface.lua`.
- [FORMATO_PACCHETTI.md](../../AzerothUnspoken/FORMATO_PACCHETTI.md), sezione "Lingue nuove".
